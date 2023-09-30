@isTest
private class AverageCostCalculatorTest {
    @isTest
    private static void calculateTest() {    
        List<InventoryCost> data = new List<InventoryCost> {        
            new InventoryCost('Memory 64Gb',10,10),
            new InventoryCost('Chipset RX2321',20,20),
            new InventoryCost('Memory 64Gb',50,15),
            new InventoryCost('Display DS21344',100,12),
            new InventoryCost('Chipset RX2321',80,25)
        };        
        Test.startTest();
        Map<String, Decimal> outputMap = AverageCostCalculator.calculate(data);
        Test.stopTest();
        for(String key : outputMap.keySet()) {
            switch on key {
                when 'Memory 64Gb' {
                    System.assertEquals(outputMap.get(key), 14.17, 'The cost of this item is wrong');
                }
                when 'Chipset RX2321' {
                    System.assertEquals(outputMap.get(key), 24, 'The cost of this item is wrong');
                }
                when 'Display DS21344' {
                    System.assertEquals(outputMap.get(key), 12, 'The cost of this item is wrong');
                }
            }
        }
    } 
}