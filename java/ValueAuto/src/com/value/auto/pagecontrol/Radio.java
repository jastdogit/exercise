package com.value.auto.pagecontrol;

import java.util.ArrayList;
import java.util.List;

public class Radio extends PageControl {
    public Radio(){
        this.type="radio";
    }
    private List<String> itemLabel = new ArrayList<String>();
    public List<String> getItemLabel() {
        return itemLabel;
    }

    public void setItemLabel(List<String> itemLabel) {
        this.itemLabel = itemLabel;
    }
    
}
