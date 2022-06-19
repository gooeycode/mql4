//+------------------------------------------------------------------+
//|                                             tradetypecounter.mq4 |
//|                                  Copyright 2022, Gooey Code.     |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, Gooey COode."

#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---


int buyTradesOpen;
int sellTradesOpen;
int totalOrders;
int orderPosition;

orderPosition = 0;

while (totalOrders < OrdersTotal()) {
    bool trade = OrderSelect(orderPosition,SELECT_BY_POS,MODE_TRADES);
      if (trade = true) {
         if(OrderType() == OP_BUY) {
               buyTradesOpen = buyTradesOpen + 1;          
         }
         else if (OrderType() == OP_SELL) {
            sellTradesOpen = sellTradesOpen + 1;
         }  
    orderPosition = orderPosition + 1;
     }
}
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+
