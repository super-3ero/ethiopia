package com.example.testproject.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.testproject.Model.NutritionModel;
import com.example.testproject.R;

import java.util.ArrayList;

public class NutritionAdapter extends RecyclerView.Adapter<NutritionAdapter.ViewHolder> {

    private Context context;
    private ArrayList<NutritionModel> modeList;

    public NutritionAdapter(Context context, ArrayList<NutritionModel> modeList) {
        this.context = context;
        this.modeList = modeList;
    }

    @NonNull
    @Override
    public NutritionAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.nutrition_single_view,parent,false);
        context = parent.getContext();
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull NutritionAdapter.ViewHolder holder, int position) {
        NutritionModel model = modeList.get(position);
        holder.setData(model.getnValues(),model.getContent(),model.getUnit());
    }

    @Override
    public int getItemCount() {
        return modeList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        private View view;
        private TextView num,val,unit;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            view = itemView;
            num = view.findViewById(R.id.num);
            val = view.findViewById(R.id.val);
            unit = view.findViewById(R.id.unit);
        }
        private void setData(String Num, String Val, String Unit){
            num.setText(Num);
            val.setText(Val);
            unit.setText(Unit);
        }
    }
}
