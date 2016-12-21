PlayGacha_Button.addEventListener(MouseEvent.CLICK, fl_ClickToGoToScene_2);

function fl_ClickToGoToScene_2(event:MouseEvent):void
{
	MovieClip(this.root).gotoAndPlay(1, "Scene 2");
}


HowToPlay_Button.addEventListener(MouseEvent.CLICK, fl_ClickToGoToScene_3);

function fl_ClickToGoToScene_3(event:MouseEvent):void
{
	MovieClip(this.root).gotoAndPlay(1, "HowToPlay");
}

var variables:URLVariables = new URLVariables();
// Build the varSend variable
// Be sure you place the proper location reference to your PHP config file here
var varSend:URLRequest = new URLRequest("celebrity.php");
varSend.method = URLRequestMethod.POST;
varSend.data = variables;
// Build the varLoader variable
var varLoader:URLLoader = new URLLoader;
varLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
varLoader.addEventListener(Event.COMPLETE, completeHandler);

   		
   		variables.sendRequest = "parse";	
		// Send the data to the php file
   		varLoader.load(varSend);

// When the data comes back from PHP we display it here		
function completeHandler(event:Event):void{

var TickAmt = event.target.data.var1

         TXT_COUPON.text = TickAmt  
         if(int(TickAmt) > 0)
         {
            
            PlayGacha_Button.addEventListener(MouseEvent.CLICK, fl_ClickToGoToScene_2);
         }
         else
         {
            
            PlayGacha_Button.removeEventListener(MouseEvent.CLICK, fl_ClickToGoToScene_2);
         }
      }
	  
		 
stop()