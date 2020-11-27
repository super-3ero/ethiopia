package com.example.testproject.Adapters;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.testproject.MainActivity;
import com.example.testproject.Model.model;
import com.example.testproject.OrderDetails.OrderDetails;
import com.example.testproject.R;
import com.example.testproject.Utils.DBHelper;

import java.util.ArrayList;

import de.hdodenhof.circleimageview.CircleImageView;


public class FoodsAdapter extends RecyclerView.Adapter<FoodsAdapter.ViewHolder> {
    private Context context;
    private ArrayList<model> modelList;

    public FoodsAdapter(Context context, ArrayList<model> modelList) {
        this.context = context;
        this.modelList = modelList;
    }

    @NonNull
    @Override
    public FoodsAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.foods_single_layout,parent,false);
        context = parent.getContext();
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull FoodsAdapter.ViewHolder holder, int position) {
        final model models = modelList.get(position);
        holder.setData(models.getImage(),models.getName(),models.getRating(),models.getTime());
        holder.view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(context, OrderDetails.class);
                intent.putExtra("FoodName",models.getName());
                intent.putExtra("description",models.getDescription());
                intent.putExtra("price",models.getPrice());
                intent.putExtra("time",models.getTime()) ;
                intent.putExtra("image",models.getImage());
                context.startActivity(intent);
            }
        });
    }

    @Override
    public int getItemCount() {
        return modelList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        private View view;
        private CircleImageView foodImage;
        private TextView foodName;
        private ImageView favorite;
        private TextView rating,time;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            view = itemView;
            foodImage = view.findViewById(R.id.foodImage);
            foodName = view.findViewById(R.id.foodName);
            rating = view.findViewById(R.id.rating);
            time = view.findViewById(R.id.time);
        }
        private void setData(String image,String foodNames,String ratings , String deliveryTime){
            foodName.setText(foodNames);
            rating.setText(ratings);
            time.setText(deliveryTime);


            Resources res = context.getResources();
            String mDrawableName = image;
            int resID = res.getIdentifier(mDrawableName , "drawable", context.getPackageName());
            foodImage.setImageResource(resID);


        }
    }
}
