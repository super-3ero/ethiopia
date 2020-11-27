package com.example.testproject;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.example.testproject.Adapters.CategoriesAdapter;
import com.example.testproject.Adapters.FoodsAdapter;
import com.example.testproject.Model.model;
import com.example.testproject.PhoneAuthentication.PhoneAuthentication;
import com.example.testproject.Utils.DBHelper;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private DBHelper dbHelper;

    private RecyclerView recyclerView,recyclwerViewFoods;
    private ArrayList<model> arrayList;
    private ArrayList<model> categorynames;
    String foodnames[]={"American Burger","Cheese Burger","Beef Burger","Tuna Burger","Chicken"};
    String prices[]={"180" ,"120","110","100","150"};
    String ratings[]={"4.5","4.2","4.3","4.4","4.9"};
    String description[]={"This burger is made up of lettuce , tomato , onion , beef and ham",
            "This burger is made up of lettuce , tomato , onion, cheese , beef and ham",
            "This burger is made up of lettuce , tomato , beef and ham",
            "This burger is made up of lettuce , tomato , onion ,Tuna, egg and french fries",
            "This burger is made up of lettuce , tomato , onion,chicken , eggs , beef and ham"};
    String image[]={"burger","cheeseburger","burger","cheeseburger","burger"};
    String times[]={"30 mins","40 mins","20 mins","35 mins","15 mins"};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();

        ReadALl();


    }
    private void init(){
        dbHelper = new DBHelper(MainActivity.this);
        recyclerView = findViewById(R.id.recyclerView);
        recyclwerViewFoods = findViewById(R.id.recyclerViewFoods);
        arrayList = new ArrayList<>();
        categorynames = new ArrayList<>();
        LinearLayoutManager layoutManager = new LinearLayoutManager(MainActivity.this,LinearLayoutManager.HORIZONTAL,false);
        LinearLayoutManager layoutManager2 = new LinearLayoutManager(MainActivity.this,LinearLayoutManager.HORIZONTAL,false);
        recyclwerViewFoods.setHasFixedSize(true);
        recyclwerViewFoods.setLayoutManager(layoutManager2);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(layoutManager);
        categorynames.add(new model("Meal","","","","","burger",1));
        categorynames.add(new model("Juice","","","","","cheeseburger",2));
        categorynames.add(new model("Desert","","","","","burger",3));

        Intent intent =new Intent(MainActivity.this, PhoneAuthentication.class);
        startActivity(intent);

    }



    private void addUser(String name , String price , String rating ,String time , String description , String image){
        boolean Isadded;
        Isadded = dbHelper.insertData(name,price,rating,time,description,image);

        if (Isadded){
            Log.d("Food", "Successfully added");
        }else {
            Log.d("Food", "Not added");

        }
    }
    private  void  ReadALl(){
        Cursor res = dbHelper.getAllData();
        if(res.getCount()!=0){
            Log.d("Food", String.valueOf(res.getCount()));
        }
        if(res.getCount()==0){
            Toast.makeText(MainActivity.this, "No DATA", Toast.LENGTH_SHORT).show();
            for(int i =0 ; i<5 ;i++){
                addUser(foodnames[i],prices[i],ratings[i],times[i],description[i],image[i]);
            }
        }else {
            StringBuffer stringBuffer = new StringBuffer();
            model models = new model();
            if(res.moveToFirst()){
                do{
                    int id = Integer.parseInt(res.getString(res.getColumnIndex("ID")));
                    String name = res.getString(1);
                    String price = res.getString(2);
                    String rating = res.getString(3);
                    String time = res.getString(4);
                    String description = res.getString(5);
                    String image = res.getString(6);
                    arrayList.add(new model(name,price,rating,time,description,image,id));
                }while (res.moveToNext());
            }

            Log.d("DATA", "ReadALl: " + stringBuffer.toString());
            CategoriesAdapter adapter = new CategoriesAdapter(MainActivity.this,categorynames );
            recyclerView.setAdapter(adapter);
            adapter.notifyDataSetChanged();
            FoodsAdapter adapter1 = new FoodsAdapter(MainActivity.this,arrayList);
            recyclwerViewFoods.setAdapter(adapter1);
            adapter.notifyDataSetChanged();
        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        ReadALl();
    }
}
