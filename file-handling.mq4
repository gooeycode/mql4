//+------------------------------------------------------------------+
//|                                                file-handling.mq4 |
//|                                               Copyright 2022,  . |
//|Reads in string lines from txt. file and prints into terminal     |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, Gooey."  
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

input string inputFile = "trade.txt";
input string inputDirec = "Files";
int OnInit() {
  
  //open the file
  
  ResetLastError();  
  int fileHandle=FileOpen("Files/trade.txt",FILE_READ|FILE_TXT|FILE_ANSI);
  if (fileHandle != INVALID_HANDLE) {  
    PrintFormat( "hello file is available for reading. File name is " + inputFile);
    string str;
      while (!FileIsEnding(fileHandle)) { 
        //read file
        str=FileReadString(fileHandle);
        Print(str);
      }
  //close file 
  FileClose(fileHandle);
    PrintFormat("data is read and file will be closed",inputFile);
  }
  else {
    PrintFormat("failed to open file, error ID is: " + GetLastError());
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
