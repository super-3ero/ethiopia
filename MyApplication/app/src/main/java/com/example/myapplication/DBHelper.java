package com.example.myapplication;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.Nullable;

public class DBHelper extends SQLiteOpenHelper {

    public static final String DATABASE_NAME = "SkyNet.db";
    public static final String TABlE_NAME = "user_table";
    public static final String COLUMN_ID = "ID";
    public static final String COLUMN_Name = "NAME";
    public static final String COLUMN_EMAIL = "EMAIL";

    public DBHelper(@Nullable Context context) {
        super(context, DATABASE_NAME, null, 1);
//        SQLiteDatabase db = this.getWritableDatabase();
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE " + TABlE_NAME +"(ID INTEGER PRIMARY KEY AUTOINCREMENT ,NAME TEXT,EMAIL NAME)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABlE_NAME);
        onCreate(db);
    }
    public boolean insertData(String name , String email){
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_Name,name);
        contentValues.put(COLUMN_EMAIL,email);
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

    public boolean UpdateData(String id,String email , String name){
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_ID,id);
        contentValues.put(COLUMN_Name,name);
        contentValues.put(COLUMN_EMAIL,email);

        db.update(TABlE_NAME,contentValues,"id=?",new String[]{id});

        return true;
    }

}
