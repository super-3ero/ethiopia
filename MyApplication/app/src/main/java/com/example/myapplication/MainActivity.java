package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private EditText email,password;
    private Button add,show,Update;
    DBHelper dbHelper;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
        addUser();
    }
    private void init(){
        email = findViewById(R.id.email);
        password = findViewById(R.id.password);
        add = findViewById(R.id.add);
        show = findViewById(R.id.Showall);
        Update = findViewById(R.id.Update);
        dbHelper = new DBHelper(MainActivity.this);
        show.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReadALl();
            }
        });
    }

    private void addUser(){
        add.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String emials = email.getText().toString();
                String name = password.getText().toString();
                boolean Isadded;
                Isadded = dbHelper.insertData(name,emials);
            }
        });
    }
    private  void  ReadALl(){
        Cursor res = dbHelper.getAllData();
        if(res.getCount()==0){
            Toast.makeText(this, "No DATA", Toast.LENGTH_SHORT).show();
            return;
        }else {
            StringBuffer stringBuffer = new StringBuffer();
            while (res.moveToNext()) {
                stringBuffer.append("ID: "+res.getString(0)+"\n");
                stringBuffer.append("NAME: "+res.getString(1)+"\n");
                stringBuffer.append("EMAIL: "+res.getString(2)+"\n\n");
            }
            Log.d("DATA", "ReadALl: " + stringBuffer.toString());

        }
    }
    public void  UpdateData(){
        Update.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String emials = email.getText().toString();
                String name = password.getText().toString();
                dbHelper.UpdateData(String.valueOf(1),name,emials);
            }
        });
    }

}
