package com.example.testproject.Adapters;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.testproject.Model.model;
import com.example.testproject.R;
import com.example.testproject.Utils.DBHelper;

import java.util.ArrayList;

import de.hdodenhof.circleimageview.CircleImageView;

public class CategoriesAdapter extends RecyclerView.Adapter<CategoriesAdapter.ViewHoldeer> {
    private Context context;
    private ArrayList<model> modelList;
    private DBHelper dbHelper;

    public CategoriesAdapter(Context context, ArrayList<model> modelList) {
        this.context = context;
        this.modelList = modelList;
    }

    @NonNull
    @Override
    public CategoriesAdapter.ViewHoldeer onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.categories_single_layout,parent,false);
        context = parent.getContext();
        dbHelper = new DBHelper(context);
        return new ViewHoldeer(view);
    }

    @Override
    public void onBindViewHolder(@NonNull CategoriesAdapter.ViewHoldeer holder, int position) {
        model models = modelList.get(position);
        holder.setData(models.getImage(),models.getName());
    }

    @Override
    public int getItemCount() {
        return modelList.size();
    }


    public class ViewHoldeer extends RecyclerView.ViewHolder {
        private View view;
        private CircleImageView foodImage;
        private TextView foodName;
        private ImageView favorite;
        public ViewHoldeer(@NonNull View itemView) {
            super(itemView);
            view = itemView;
            foodImage = view.findViewById(R.id.foodImage);
            foodName = view.findViewById(R.id.FoodCategories);
            favorite = view.findViewById(R.id.favorite);
        }
        private void setData(String image,String foodCategory){
            foodName.setText(foodCategory);
            Resources res = context.getResources();
            String mDrawableName = image;
            int resID = res.getIdentifier(mDrawableName , "drawable", context.getPackageName());
            foodImage.setImageResource(resID);


        }
    }
}
