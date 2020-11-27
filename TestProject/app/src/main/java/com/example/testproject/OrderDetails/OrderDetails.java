package com.example.testproject.OrderDetails;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.example.testproject.Adapters.FoodsAdapter;
import com.example.testproject.Adapters.NutritionAdapter;
import com.example.testproject.MainActivity;
import com.example.testproject.Model.NutritionModel;
import com.example.testproject.R;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.FirebaseFirestore;

import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class OrderDetails extends AppCompatActivity {
    CardView cardView;
    private Button order;
    private RecyclerView recyclerView;
    private ArrayList<NutritionModel> modelList;
    private NutritionModel models;
    private String foodName , price , description , time , image ;
    private TextView FoodName , Price , Description, Time ;
    private ImageView imageView,Cancel;
    private DatabaseReference mDatabase;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_order_details);
        init();
        onClick(1000);
    }
    private void init(){
        FoodName = findViewById(R.id.FoodName);
        Price = findViewById(R.id.Price);
        Description = findViewById(R.id.description);
        Time = findViewById(R.id.time);
        imageView = findViewById(R.id.mainFoodImage);
        cardView = findViewById(R.id.CardView);
        Cancel = findViewById(R.id.Cancel);
        cardView.setBackgroundResource(R.drawable.background);
        recyclerView = findViewById(R.id.recyclerViewNutrition);
        LinearLayoutManager layoutManager = new LinearLayoutManager(OrderDetails.this,LinearLayoutManager.HORIZONTAL,false);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(layoutManager);
        modelList = new ArrayList<>();
        models = new NutritionModel();
        modelList.add(new NutritionModel("266","calories","kcal"));
        modelList.add(new NutritionModel("11","protein","g"));
        modelList.add(new NutritionModel("598","sodium","mg"));
        modelList.add(new NutritionModel("17","cholestrol","mg"));
        modelList.add(new NutritionModel("22","fat","mg"));
        order = findViewById(R.id.order);
        NutritionAdapter adapter = new NutritionAdapter(OrderDetails.this,modelList);
        recyclerView.setAdapter(adapter);
        adapter.notifyDataSetChanged();
        foodName = getIntent().getExtras().getString("FoodName");
        price = getIntent().getExtras().getString("price");
        description = getIntent().getExtras().getString("description");
        time = getIntent().getExtras().getString("time");
        FoodName.setText(foodName);
        Price.setText("$ "+ price);
        Time.setText("It only takes " + time + " to make");
        Description.setText(description);
        image = getIntent().getExtras().getString("image");
        Resources res = getResources();
        String mDrawableName = image;
        int resID = res.getIdentifier(mDrawableName , "drawable", getPackageName());
        imageView.setImageResource(resID);
        mDatabase = FirebaseDatabase.getInstance().getReference();

    }
    private void onClick(int time){
        Cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        order.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final FirebaseFirestore db = FirebaseFirestore.getInstance();
                final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(OrderDetails.this,R.style.AppBottomSheetDialogTheme);

                bottomSheetDialog.setCanceledOnTouchOutside(false);
                bottomSheetDialog.setContentView(R.layout.order);

               final int count = 0 ;

//                CardView card = bottomSheetDialog.findViewById(R.id.CardOrder);
//                card.setBackgroundResource(R.drawable.background);
                Button add = bottomSheetDialog.findViewById(R.id.add);
                Button sub = bottomSheetDialog.findViewById(R.id.sub);
                final Button TakeOrder = bottomSheetDialog.findViewById(R.id.OrderFood);
                final TextView numItems = bottomSheetDialog.findViewById(R.id.numItems);
                final TextView TakeAwayOrDineIn = bottomSheetDialog.findViewById(R.id.TakeAwayORDIneIn);
                final TextView Prices = bottomSheetDialog.findViewById(R.id.Price);;
                final TextView orderText = bottomSheetDialog.findViewById(R.id.OrderText);
                final TextView TimerText = bottomSheetDialog.findViewById(R.id.TimerText);
                final ProgressBar progeress = bottomSheetDialog.findViewById(R.id.progress_horizontal);
                final Switch  takeAway = bottomSheetDialog.findViewById(R.id.TakeAwaySwitch);
                final Switch  dineIn = bottomSheetDialog.findViewById(R.id.DineInSwitch);
                final LinearLayout layoutMain = bottomSheetDialog.findViewById(R.id.layoutMain);
                final LinearLayout layoutOrder = bottomSheetDialog.findViewById(R.id.layoutOrder);
                Price.setText(Prices.getText().toString());
                add.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        int counts = Integer.parseInt(numItems.getText().toString());
                        counts++;
                        numItems.setText(String.valueOf(counts));
                    }
                });
                sub.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        int numItem = Integer.parseInt(numItems.getText().toString());
                        if(numItem==0){
                            return;
                        }else {
                            numItem--;
                            numItems.setText(String.valueOf(numItem));
                        }
                    }
                });
                takeAway.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        if(isChecked){
                            dineIn.setChecked(false);
                        }else {
                            dineIn.setChecked(true);
                        }
                    }
                });
                dineIn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        if(isChecked){
                            takeAway.setChecked(false);
                        }else {
                            takeAway.setChecked(true);
                        }
                    }
                });
                TakeOrder.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        TakeOrder.setVisibility(View.INVISIBLE);
                        String numberOfOrders = numItems.getText().toString();
                        String OrderType;
                        if(takeAway.isChecked()){
                            OrderType = "Take Away";
                            TakeAwayOrDineIn.setText(OrderType);
                        }else {
                            OrderType = "Dine In";
                            TakeAwayOrDineIn.setText(OrderType);
                        }
                        layoutMain.setVisibility(View.GONE);
                        layoutOrder.setVisibility(View.VISIBLE);
                        TimerText.setVisibility(View.INVISIBLE);
                        progeress.setVisibility(View.INVISIBLE);
                        orderText.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                TimerText.setVisibility(View.VISIBLE);
                                progeress.setVisibility(View.VISIBLE);
                                orderText.setText("Pick up in ...");
                                orderText.setTextColor(ContextCompat.getColor(OrderDetails.this,R.color.black));
                                orderText.setBackgroundResource(R.drawable.textbackground);
                            }
                        });
                        Map<String, Object> order = new HashMap<>();
                        order.put("food", FoodName.getText().toString());
                        order.put("time", Time.getText().toString());
                        order.put("description", Description.getText().toString());
                        order.put("conformation", true);

                        mDatabase.child("order").push().setValue(order);
                        Toast.makeText(OrderDetails.this, numberOfOrders + " " + OrderType, Toast.LENGTH_SHORT).show();

                        new CountDownTimer(100000, 1000) {
                            int i = 0 ;
                            public void onTick(long millisUntilFinished) {

                                String text = String.format(Locale.getDefault(), "%02d: %02d",
                                        TimeUnit.MILLISECONDS.toMinutes(millisUntilFinished) % 60,
                                        TimeUnit.MILLISECONDS.toSeconds(millisUntilFinished) % 60);
                                TimerText.setText(text);
                                i++;
                                progeress.setProgress((int)i*100/(100000/1000));
                                //here you can have your logic to set text to edittext
                            }

                            public void onFinish() {
                                TimerText.setVisibility(View.GONE);
                                progeress.setProgress(100);
                                orderText.setText("Your order has arrived");
                                orderText.setBackgroundResource(R.drawable.text_background);
                                orderText.setTextColor(ContextCompat.getColor(OrderDetails.this,R.color.white));

                            }

                        }.start();

                    }
                });



                bottomSheetDialog.show();
            }
        });
    }
}
