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
    
<form id="frm" class="form-horizontal", method="POST" action="formconnectionsql.jsp" onsubmit="return validation();">
  <fieldset>
  <legend>Personal Information</legend>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">First Name:</label>
    <div class="col-sm-8">
      <input type="text" name="firstname" class="form-control" id="firstname" placeholder="Enter your First Name">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Last Name:</label>
    <div class="col-sm-8">
      <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Enter your Last Name">
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

 <div class="form-group">
    <label class="control-label col-sm-2" for="mobile">Mobile N0.:</label>
    <div class="col-sm-8">
      <input type="text" name="mobile" class="form-control" id="mobile" placeholder="Enter yor Mobile Number">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="address">Address:</label>
    <div class="col-sm-8">
      <input type="text" name="address" class="form-control" id="address" placeholder="Enter your Address ">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="gender">Gender:</label>
    <div class="col-sm-8">
      <input type="radio" name="gender" value="Male"> Male
      <input type="radio" name="gender" value="Female"> Female
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="address">Username:</label>
    <div class="col-sm-8">
      <input type="text" name="uname" class="form-control" id="uname" placeholder="Enter your Username ">
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
            var txt=document.getElementById('firstname').value;
            var txt=txt.trim();
            if(txt==''||!isNaN(parseInt(txt))||txt.length==0){
                
                errorMessage = 'First Name can not be left empty or contain number. <br>';
                
            }
            if(txt.length>8){
                errorMessage='Name must be less than 15 character.<br>';
                    
            }
            
            var txt=document.getElementById('lastname').value;
            var txt=txt.trim();
            if(txt==''||!isNaN(parseInt(txt))||txt.length==0){
                errorMessage= errorMessage+'Last Name can not be left empty or contain number.<br>';
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
            var mobnum=document.getElementById('mobile').value;
            if(mobnum==''|| isNaN(parseInt(mobnum))||mobnum.length==0){
                
                errorMessage = errorMessage +' Mobile Number can not be left empty or text.<br>';
            }
            if (mobnum.length!=10) {
                errorMessage=errorMessage+'Enter 10 numbers<br>';
            }


            /*Gender Validation*/
            var gender=document.getElementsByName('gender');
            if(!gender[0].checked && !gender[1].checked){
                errorMessage= errorMessage+'Select Gender<br>';
            }
            
            //var check = document.getElementsByName('chbox');
            //if(!check[0].checked && !check[1].checked && !check[2].checked &&!check[3].checked ){
            //  errorMessage = errorMessage+'Hobby can not be left empty.<br>';
            //}
            
             /*username Validation*/
            var txt=document.getElementById('uname').value;
            if(txt == ''){
                
                errorMessage = errorMessage +'Username can not be left empty.<br>';
                
            }


            

            if(errorMessage!=''){
                document.getElementById('errorMsg').innerHTML=errorMessage;
                return false; 
            }           
            return true;
             if (isValid) {
                            window.location = 'Form1.jsp';
                        }
                        return false;

        }

    </script>
</body>
</html>

