package com.example.testproject.Utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class DBHelper extends SQLiteOpenHelper {

    public static final String DATABASE_NAME = "Foodies.db";
    public static final String TABlE_NAME = "food_table";
    public static final String COLUMN_ID = "ID";
    public static final String COLUMN_Name = "FOOD_NAME";
    public static final String COLUMN_Price = "PRICE";
    public static final String COLUMN_RATING = "RATING";
    public static final String COLUMN_TIME = "TIME";
    public static final String COLUMN_DESCRIPTION = "DESCRIPTION";
    public static final String COLUMN_IMAGE = "IMAGE";

    public DBHelper(@Nullable Context context) {
        super(context, DATABASE_NAME, null, 1);
//        SQLiteDatabase db = this.getWritableDatabase();
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE " + TABlE_NAME +"(ID INTEGER PRIMARY KEY AUTOINCREMENT ,FOOD_NAME TEXT,PRICE TEXT,RATING TEXT,TIME TEXT,DESCRIPTION TEXT,IMAGE TEXT)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABlE_NAME);
        onCreate(db);
    }
    public boolean insertData(String name ,String price,String rating , String time ,String description , String image){
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_Name,name);
        contentValues.put(COLUMN_Price,price);
        contentValues.put(COLUMN_RATING,rating);
        contentValues.put(COLUMN_TIME,time);
        contentValues.put(COLUMN_DESCRIPTION,description);
        contentValues.put(COLUMN_IMAGE,image);

        long result = db.insert(TABlE_NAME,null,contentValues);
        if(result==-1){
            return false;
        }else {
            return true;
        }
    }
    public Cursor getAllData(){
        SQLiteDatabase db = this.getWritableDatabase();

        Cursor res = db.rawQuery("select * from "+TABlE_NAME,null);

        return res;
    }

    public boolean UpdateData(String id,String email,String name , String price,String rating , String time ,String description , String image){
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_Name,name);
        contentValues.put(COLUMN_Price,price);
        contentValues.put(COLUMN_RATING,rating);
        contentValues.put(COLUMN_TIME,time);
        contentValues.put(COLUMN_DESCRIPTION,description);
        contentValues.put(COLUMN_IMAGE,image);

        db.update(TABlE_NAME,contentValues,"id=?",new String[]{id});

        return true;
    }

}
