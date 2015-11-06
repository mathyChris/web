<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- viewport는 스마트폰에서 인식  -->
<!--     initial-scale=1.0 은 zoom in out 하지 않은 초기 default size 의 document page 로 보여준다는 뜻  -->
    
    
    <title> map2.jsp </title>
    
    <style type="text/css">
    
		body, html{
		
			width : 100%; 
 			height : 100%;
		}
    
    	#map{
    	
    		width : 80%;
     		height : 80%;
     		
     		align-position : center ; 
     		
/*      		width : 500px;  */
/*      		height : 500px ; */
    	
    	}
    
    
    </style>
    

  </head>
  <body>
  
  <button id="loc1"> GangNam </button>
  <button id="loc2"> IWha</button>
  <button id="loc3"> KangWha</button>
  <button id="loc4"> My Home </button>
  
  
  	<div id="map"> Google Map </div>
	

  	
  </body>
  
      <script src="https://maps.googleapis.com/maps/api/js"></script>
  	  <script type="text/javascript"> 
 		
  	   var latLng = { // javascript's object, name & value, literal expression 
 				
 				lat : 37.12345, 
 				lng : 127.12345
  	   				
 		};
  	  	
  	   var options = {
  			   
  			   zoom : 12, 
  			   center : latLng
  			   
  	   }; 
  	   
  	   
  	   
  	   var m = new google.maps.Map(map,options) ;
  	   
  	   m.set
  	   
  	   
  	   m.setCenter({
  		   
  		   lat : 0, 
  		   lng : 0
  		   
  		   // 강남역 37.497920, 127.027647
  		   
  	   }); 
  	   
  	   m.setZoom(10); 
  	   
  	   
  	   var geoCoder = new google.maps.Geocoder() ;
  	   
  	   
  	   var secretMessage = "Hello"; 
  	   
  	   
	   function attachSecretMessage(marker, secretMessage) {
			  var infowindow = new google.maps.InfoWindow({
			    content: secretMessage
			  });
			  
				marker.addListener('click', function() {
				    infowindow.open(marker.get('map'), marker);
				  });	  
	   }
  	   
  	   
  	   function moveMap(){
  		   
  		   alert(this.id + "Clicking..."); 
  		   
  		   switch (this.id) {
  		   
				case "loc1":
					
					console.log("To GangNam"); 
					
					geoCoder.geocode({address : '강남역'}, function(result, status){
						
						console.dir(result);
						console.dir(status);
						console.dir(geoCoder); 
						
						var lat = result[0].geometry.location.lat();
						var lng = result[0].geometry.location.lng();
						
						var address = result[0].formatted_address; 
						
						var typeLength = result[0].types.length ;
						
						
						console.log("lat = " + lat); 
						console.log("lng = " + lng); 
						console.log("address = " + address); 
						
						for(i = 0 ; i < typeLength ; i++) {
							
							var type = result[0].types[i] ; 
							
							console.log("type[" + i + "] = " + type); 
						}
						
						
						m.panTo({
							
					  		   lat : lat, 
					  		   lng : lng
							
						}); 
						
				  		   m.setZoom(14); 
				  		   
				  		   
				  		   // Marker 표시 
							var marker = new google.maps.Marker({
								
								map : m , 
								position : {lat : lat, lng : lng }
								
							}); 	
				  		   
// 							secretMessage = address ; 
				  		   
						    attachSecretMessage(marker, address);
				  		   
	
				  		   
							
// 							m.setTilt(45); // 45 기울어진 모습을 출력 
				  		   
					}); 
					
					
					
					
// 					m.setCenter({
						
// 				  		   lat : 37.497920, 
// 				  		   lng : 127.0276474
						
// 					}); 

					break;
					
				case "loc2":
					
					console.log("To IWha"); 
					
// 					m.setCenter({
						
// 				  		   lat : 37.557059, 
// 				  		   lng : 126.945803
				  		   
// 				  		   //37.557059, 126.945803
						
// 					}); 


					m.panTo({
						
				  		   lat : 37.557059, 
				  		   lng : 126.945803
				  		   
				  		   //37.557059, 126.945803
						
					}); 

					
					m.setZoom(18); 
					
					
					break;
				
				case "loc3":
					
					console.log("To KangWha"); 
					
					m.setCenter({
						
				  		   lat : 37.571836, 
				  		   lng : 126.976570
				  		   
				  		   //37.571836, 126.976570
						
					}); 
					
					
					break;
					
				case "loc4":
					
					console.log("Go Home, Bangi-Samgeri"); 
					
					m.setCenter({
						
				  		   lat : 37.511658, 
				  		   lng : 127.108155
				  		   
				  		   //37.511658, 127.108155
						
					}); 
					
					
					
					break;	
		
				default:
					break;
				
				
				
			}
  	   }
  	   
  	   loc1.onclick = moveMap ; // moveMap()에서 ()는 생략 
	   loc2.onclick = moveMap ;
	   loc3.onclick = moveMap ;
	   loc4.onclick = moveMap ;
  	   
  	  
  	  </script>

 
</html>







