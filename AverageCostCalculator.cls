public with sharing class AverageCostCalculator {
    /*
    US-XXXXXX - 09/30/2023
    Author: Thiago Cunha
    Description: This method is used to calculate the real cost inventory 
    */
    public static Map<String, Decimal> calculate(List<InventoryCost> inventoryCosts) {
        Map<String, InventoryCost> auxMap = new Map<String, InventoryCost>();
        Map<String, Decimal> resultMap = new Map<String, Decimal>();
        for (InventoryCost inventoryLine: inventoryCosts) {
            if (auxMap.containsKey(inventoryLine.item)) {
                auxMap.get(inventoryLine.item).cost += (inventoryLine.cost*inventoryLine.quantity);
                auxMap.get(inventoryLine.item).quantity += inventoryLine.quantity;                
            } else {
                auxMap.put(inventoryLine.item, new InventoryCost(inventoryLine.item,inventoryLine.quantity, inventoryLine.cost*inventoryLine.quantity));                                                    
            }
            resultMap.put(inventoryLine.item, (auxMap.get(inventoryLine.item).cost/auxMap.get(inventoryLine.item).quantity ).setScale(2));
        }
        return resultMap;
    }
}