package com.toolsBean;

import java.util.ArrayList;

import com.toolsBean.MyTools;
import com.valueBean.GoodsSingle;

public class ShopDress {
	private ArrayList buyList=new ArrayList();
	public ArrayList getBuyList() {
		return buyList;
	}
	
	public void addItem(GoodsSingle single){
		if(single!=null){
			if(buyList.size()==0){	
				GoodsSingle newGoods=new GoodsSingle();
				newGoods.setName(single.getName());
				newGoods.setProduct(single.getProduct());
				newGoods.setPrice(single.getPrice());
				newGoods.setCount(single.getCount());
				buyList.add(newGoods);	
			}
			else{		
				int i=0;				
				for(;i<buyList.size();i++){			
					GoodsSingle newGoods=(GoodsSingle)buyList.get(i);		
					if(newGoods.getName().equals(single.getName())){		
						newGoods.setCount(newGoods.getCount()+1);;		
						break;		
					}
				}
				if(i>=buyList.size()){	
					GoodsSingle newGoods=new GoodsSingle();
					newGoods.setName(single.getName());
					newGoods.setPrice(single.getPrice());
					newGoods.setCount(single.getCount());
					buyList.add(newGoods);	
				}
			}
		}			
	}
	 
	public void addItem(String name){
		for(int i=0;i<buyList.size();i++){
			GoodsSingle newGoods=(GoodsSingle)buyList.get(i); 
			if(newGoods.getName().equals(MyTools.toChinese(name))){							
				newGoods.setCount(newGoods.getCount()+1);
					break;
			}
		}
	}
	 
	public void removeItem(String name){
		for(int i=0;i<buyList.size();i++){
			GoodsSingle newGoods=(GoodsSingle)buyList.get(i); 
			if(newGoods.getName().equals(MyTools.toChinese(name))){							
				if(newGoods.getCount()>1){
					newGoods.setCount(newGoods.getCount()-1);
					break;	
				}
				else if(newGoods.getCount()==1){	
					buyList.remove(i);	
				}
			}
		}
	}

	public void clearCar(){
		buyList.clear();	
	}
}