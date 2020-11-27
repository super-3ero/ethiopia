package com.example.testproject.Model;

public class NutritionModel {
    String nValues , content,unit;

    public NutritionModel() {
    }

    public NutritionModel(String nValues, String content, String unit) {
        this.nValues = nValues;
        this.content = content;
        this.unit = unit;
    }

    public String getnValues() {
        return nValues;
    }

    public void setnValues(String nValues) {
        this.nValues = nValues;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}
