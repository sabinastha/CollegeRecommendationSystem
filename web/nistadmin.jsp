<!DOCTYPE html>
<html>
<head>
    <title>Form</title>

    <link rel="stylesheet" type="text/css" href="myStyle.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <h1><u>Register Here</u></h1>
    <div id ="errorMsg" class="alert-danger" role="alert"></div>
    
<form id="frm" class="form-horizontal", method="POST" action="nistadminconnection.jsp" onsubmit="return validation();">
  <fieldset>
  <legend>College Information</legend>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">College Name:</label>
    <div class="col-sm-8">
      <input type="text" name="collegename" class="form-control" id="collegename" placeholder="Enter your College Name">
    </div>
  </div>

 


  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-8">
      <input type="email" name="email" class="form-control" id="email" placeholder="Enter your E-mail">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="password">Password:</label>
    <div class="col-sm-8">
      <input type="password" name="password" class="form-control" id="password" placeholder="Enter your Password">
    </div>
  </div>

<!-- <div class="form-group">
    <label class="control-label col-sm-2" for="contact">Contact N0.:</label>
    <div class="col-sm-8">
      <input type="text" name="contact" class="form-control" id="contact" placeholder="Enter yorContact Number">
    </div>
  </div>
-->
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="address">Address:</label>
    <div class="col-sm-8">
      <input type="text" name="address" class="form-control" id="address" placeholder="Enter your Address ">
    </div>
  </div>
  
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="chbox">College Program:</label>
    <div class="col-sm-offset-2 col-sm-10">
      <div class="program">
        <label><input type="checkbox" name="chbox" value="bsc.csit"> BSC.CSIT</label>
        <br>
        <label><input type="checkbox" name="chbox" value="bsc.general"> Bsc.General</label>
        <br>
      
      </div> 
    </div>
  </div>

 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default"><a href="index1.html">Submit</a></button>
    </div>
  </div>
  </fieldset>
    </form>
    
    <script type="text/javascript">
        function validation(){
            var errorMessage = '';

            /*Name Validation*/
            var txt=document.getElementById('collegename').value;
            var txt=txt.trim();
            if(txt==''||!isNaN(parseInt(txt))||txt.length==0){
                
                errorMessage = 'College Name can not be left empty or contain number. <br>';
                
            }
            if(txt.length>8){
                errorMessage=' ColleheName must be less than 15 character.<br>';
                    
            }
            
           
            
            /*Email Validation*/
            var txt=document.getElementById('email').value;
            if(txt == ''){
                
                errorMessage = errorMessage +'Email can not be left empty.<br>';
                
            }
            else{
                var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                if(!re.test(txt)){
                    errorMessage = errorMessage +'Invalid Email address.';
                }       
            }
            
                        /*Password Validation*/
            var txt=document.getElementById('password').value;
            if(txt == ''){
                
                errorMessage = errorMessage +'Password can not be left empty.<br>';
                
            }
                        
            /*Address Validation*/
            var txt=document.getElementById('address').value;
            if(txt == ''){
                
                errorMessage = errorMessage +'Address can not be left empty.<br>';
                
            }

            /*Mobile Number Validation*/
            
            /*Gender Validation*/
            
            
            //var check = document.getElementsByName('chbox');
            //if(!check[0].checked && !check[1].checked && !check[2].checked &&!check[3].checked ){
            //  errorMessage = errorMessage+'Hobby can not be left empty.<br>';
            //}

            

            if(errorMessage!=''){
                document.getElementById('errorMsg').innerHTML=errorMessage;
                return false; 
            }           
            return true;
             if (isValid) {
                            window.location = 'form.jsp';
                        }
                        return false;

        }

    </script>
</body>
</html>

