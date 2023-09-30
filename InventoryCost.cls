/*
US-XXXXXX - 09/30/2023
Author: Thiago Cunha
Description: This class is the wrapper class used on AverageCostCalculator 
*/
public class InventoryCost {
    public String item {get;set;}
    public Integer quantity {get;set;}
    public Decimal cost {get;set;}    
    public InventoryCost(String itemInput, Integer quantityInput, Decimal costInput) {
        item = itemInput;
        quantity = quantityInput;
        cost = costInput;       
    }   
}