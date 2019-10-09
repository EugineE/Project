<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!including bootstrap file>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/Style.css">
<title>Transport Department</title>
<script>
function toggle(master,cn)
{
	//alert('hi');
	var array=document.getElementsByClassName(cn);
	//alert(array[0].id);
	for(var i=0;i<array.length;i++)
		{
		var cb=document.getElementById(array[i].id);
		cb.checked=master.checked;
		}
	
	}

$(document).ready(function() {

	   var docHeight = $(window).height();
	   var footerHeight = $('.footer').height();
	   var footerTop = $('.footer').position().top + footerHeight;

	   if (footerTop < docHeight) {
	    $('.footer').css('margin-top', 10+ (docHeight - footerTop) + 'px');
	   }
	  });
</script>
</head>
<body>

<!-- logo image -->
 <img alt="..." src="Image/web%20page.png" class="logo-img" >
<!-- end of logo image -->    

<!--Navigator  -->
 <div class="navbar navbar-default" role="navigation">

    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">Jeppiaar Transport</a>
    </div>

    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp" >Home</a></li>
       <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown">Register<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="Registration.jsp">Student</a></li>
            <li><a href="StaffRegistration.jsp">Staff</a></li>
            </ul>
            </li>
             <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown">Attendance<b class="caret"></b></a>
          <ul class="dropdown-menu">
                     <li><a href="StaffAttendance.jsp">Staff</a></li>
           			 <li><a href="Update.jsp">Update</a></li>
          </ul>
       <li class="dropdown">
       <a  class="dropdown-toggle" data-toggle="dropdown">Route<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="Department.jsp">Bus</a></li>
            <li><a href="AddRoute.jsp">Add Route</a></li>
            <li><a href="DeleteRoute.jsp">Delete Route</a>
            </ul>
            </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown">Update<b class="caret"></b></a>
          <ul class="dropdown-menu">
          			 <li><a href="BoardingPoint.jsp">BoardingPoint</a></li>
                     <li><a href="Delete.jsp">Delete</a></li>
           			 <li><a href="Batch.jsp">Batch</a></li>
          </ul>
        </li>
        <li><a href="Login.jsp" >Logout</a></li>
      </ul>
    </div>
     
    </div>
       
<!-- end of navigator -->
<!department list>
<form action="BusRoute.jsp" method="get">
<div class="container">
	<div class="row">
	<div class="col-md-6 col-sm-6"></div>
	<div class="col-md-3 col-sm-3">
	
                       <input type="radio" name="attendence"  value="withAttendence" />
               With Attendence
                
	</div>
	<div class="col-md-3 col-sm-3">
	 <input type="radio" name="attendence"   value="withOutAttendence" checked="checked"/>
               With Out Attendence
                		
	</div>
	</div>
	<div class="container">
		<div class="row">
		     
		     		<h3>Staff</h3>
		     		</div>
		     		<!begin>
		     		<div class="row">
		     		<div class="col-md-3 col-sm-4">
					
					<!all>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartmentmaster" id="staffdepartmentmaster" autocomplete="off" onchange="toggle(this,'staffDepartment')" />
               			 <div class="[ btn-group ]">
               				<label for="staffdepartmentmaster" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartmentmaster" class="[ btn btn-default active ]" id="box">
                    		ALL
                		</label>
            			</div>
        			</div>
					<!aero>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment1" autocomplete="off" value="AERO" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment1" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment1" class="[ btn btn-default active ]" id="box">
                    		AERO
                		</label>
            			</div>
        			</div>
        			<!bio tech>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment2" autocomplete="off" value="BIO-TECH" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment2" class="[ btn btn-primary ]" >
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment2" class="[ btn btn-default active ]" id="box">
                    		BIO-TECH
                		</label>
            			</div>
        			</div>
        			<!civil>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment3" autocomplete="off" value="CIVIL" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment3" class="[ btn btn-primary ]" >
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment3" class="[ btn btn-default active ]" id="box">
                    		CIVIL
                		</label>
            			</div>
        			</div>
        			<!CSE>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment4" autocomplete="off" value="CSE" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment4" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment4" class="[ btn btn-default active ]" id="box">
                    		CSE
                		</label>
            			</div>
        			</div>
        			</div>
        			<div class="col-md-3 col-sm-4">
        			<!ECE>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment5" autocomplete="off" value="ECE" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment5" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment5" class="[ btn btn-default active ]" id="box">
                    		ECE
                		</label>
            			</div>
        			</div>
        			<!EEE>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment6" autocomplete="off" value="EEE" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment6" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment6" class="[ btn btn-default active ]" id="box">
                    		EEE
                		</label>
            			</div>
        			</div>
        			<!E&I>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment7" autocomplete="off" value="E&I" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment7" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment7" class="[ btn btn-default active ]" id="box">
                    		E&E
                		</label>
            			</div>
        			</div>
        			<!IT>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment8" autocomplete="off" value="IT" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment8" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment8" class="[ btn btn-default active ]" id="box">
                    		IT
                		</label>
            			</div>
        			</div>
        			<!MECH>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment9" autocomplete="off" value="MECH" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment9" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment9" class="[ btn btn-default active ]" id="box">
                    		MECH
                		</label>
            			</div>
        			</div>
        			</div>
        			<!col3>
        			<div class="col-md-3 col-sm-4">
        			<!ME>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment10" autocomplete="off" value="ME" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment10" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment10" class="[ btn btn-default active ]" id="box">
                    		ME
                		</label>
            			</div>
        			</div>
        			<!MBA>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment11" autocomplete="off" value="MBA" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment11" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment11" class="[ btn btn-default active ]" id="box">
                    		MBA
                		</label>
            			</div>
        			</div>
        			<!LIBRARY>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment12" autocomplete="off" value="LIBRARY" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment12" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment12" class="[ btn btn-default active ]" id="box">
                    		LIBRARY
                		</label>
            			</div>
        			</div>
        			<!S&H>
					<div class="[ form-group ]">
                       <input type="checkbox" name="staffDepartment" id="staffdepartment13" autocomplete="off" value="CSE" class="staffDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="staffdepartment13" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="staffdepartment13" class="[ btn btn-default active ]" id="box">
                    		S&H
                		</label>
            			</div>
        			</div>
        			</div>
        			</div>
					<!end>
			<!STUDENT LIST>
			<div class="row">
		     
		     		<h3>Student</h3>
		     		</div>
		     		<!begin>
		     		<div class="row">
		     		<div class="col-md-3 col-sm-4 ">
					
					<!all>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartmentmaster" id="studentDepartmentmaster" autocomplete="off" onchange="toggle(this,'studentDepartment')" />
               			 <div class="[ btn-group ]">
               				<label for="studentDepartmentmaster" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartmentmaster" class="[ btn btn-default active ]" id="box">
                    		ALL
                		</label>
            			</div>
        			</div>
					<!aero>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment1" autocomplete="off" value="AERO" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment1" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment1" class="[ btn btn-default active ]" id="box">
                    		AERO
                		</label>
            			</div>
        			</div>
        			<!bio tech>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment2" autocomplete="off" value="BIO-TECH" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment2" class="[ btn btn-primary ]" >
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment2" class="[ btn btn-default active ]" id="box">
                    		BIO-TECH
                		</label>
            			</div>
        			</div>
        			<!civil>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment3" autocomplete="off" value="CIVIL" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment3" class="[ btn btn-primary ]" >
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment3" class="[ btn btn-default active ]" id="box">
                    		CIVIL
                		</label>
            			</div>
        			</div>
        			</div>
        			<div class="col-md-3 col-sm-4 ">
        			<!CSE>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment4" autocomplete="off" value="CSE" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment4" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment4" class="[ btn btn-default active ]" id="box">
                    		CSE
                		</label>
            			</div>
        			</div>
        			
        			<!ECE>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment5" autocomplete="off" value="ECE" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment5" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment5" class="[ btn btn-default active ]" id="box">
                    		ECE
                		</label>
            			</div>
        			</div>
        			<!EEE>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment6" autocomplete="off" value="EEE" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment6" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment6" class="[ btn btn-default active ]" id="box">
                    		EEE
                		</label>
            			</div>
        			</div>
        			<!E&I>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment7" autocomplete="off" value="E&I" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment7" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment7" class="[ btn btn-default active ]" id="box">
                    		E&E
                		</label>
            			</div>
        			</div>
        			</div>
        			<!col3>
        			<div class="col-md-3 col-sm-4 ">
        			<!IT>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment8" autocomplete="off" value="IT" class="studentDepartment"/>
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment8" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment8" class="[ btn btn-default active ]" id="box">
                    		IT
                		</label>
            			</div>
        			</div>
        			
        			<!MECH>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment9" autocomplete="off" value="MECH" class="studentDepartment" />
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment9" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment9" class="[ btn btn-default active ]" id="box">
                    		MECH
                		</label>
            			</div>
        			</div>
        			
        			<!ME>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment10" autocomplete="off" value="ME" class="studentDepartment" />
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment10" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment10" class="[ btn btn-default active ]" id="box">
                    		ME
                		</label>
            			</div>
        			</div>
        			<!MBA>
					<div class="[ form-group ]">
                       <input type="checkbox" name="studentDepartment" id="studentDepartment11" autocomplete="off" value="MBA" class="studentDepartment" />
               			 <div class="[ btn-group ]">
               				<label for="studentDepartment11" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="studentDepartment11" class="[ btn btn-default active ]" id="box">
                    		MBA
                		</label>
            			</div>
        			</div>
        			
        			</div>
        			</div>
					<!end>
			<!END STUDENT LIST>
			<!batch>
			<div class="row">
		     
		     		
		     		</div>
		     		
		     		<div class="row">
		     		<div class="col-md-3 col-sm-4 ">
		     		<h3>Batch</h3>
			<!all>
					<div class="[ form-group ]">
                       <input type="checkbox" name="batchmaster" id="batchmaster" autocomplete="off"  onchange="toggle(this,'batch')" />
               			 <div class="[ btn-group ]">
               				<label for="batchmaster" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="batchmaster" class="[ btn btn-default active ]" id="box">
                    		ALL
                		</label>
            			</div>
        			</div>
					<!2016-2020>
					<div class="[ form-group ]">
                       <input type="checkbox" name="batch" id="batch1" autocomplete="off" value="2016-2020" class="batch"/>
               			 <div class="[ btn-group ]">
               				<label for="batch1" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="batch1" class="[ btn btn-default active ]" id="box">
                    		2016-2020
                		</label>
            			</div>
        			</div>
        			<!2015-2019>
					<div class="[ form-group ]">
                       <input type="checkbox" name="batch" id="batch2" autocomplete="off" value="2015-2019" class="batch"/>
               			 <div class="[ btn-group ]">
               				<label for="batch2" class="[ btn btn-primary ]" >
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="batch2" class="[ btn btn-default active ]" id="box">
                    		2015-2019
                		</label>
            			</div>
        			</div>
        			<!2014-2018>
					<div class="[ form-group ]">
                       <input type="checkbox" name="batch" id="batch3" autocomplete="off" value="2014-2018" class="batch"/>
               			 <div class="[ btn-group ]">
               				<label for="batch3" class="[ btn btn-primary ]" >
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="batch3" class="[ btn btn-default active ]" id="box">
                    		2014-2018
                		</label>
            			</div>
        			</div>
        			<!2013-2017>
					<div class="[ form-group ]">
                       <input type="checkbox" name="batch" id="batch4" autocomplete="off" value="2013-2017" class="batch"/>
               			 <div class="[ btn-group ]">
               				<label for="batch4" class="[ btn btn-primary ]">
                    		<span class="[ glyphicon glyphicon-ok ]"></span>
                    		<span> </span>
                			</label>
                    	<label for="batch4" class="[ btn btn-default active ]" id="box">
                    		2013-2017
                		</label>
            			</div>
        			</div>
        			</div>
			<!end of batch>
	</div>
	<div class="row">
		     		<div class="col-md-4 col-sm-4 ">
		     		
		     		</div>
		     		<div class="col-md-4 col-sm-4 ">

		     		<button type="submit" class="btn btn-md btn-primary">Enter</button>
		     		
		     		</div>
		     		<div class="col-md-4 col-sm-4 ">
		     		
		     		</div>
		     		</div>
		     	
</div>
</div>
</div>
</div>

</form>
<!end of department list>
<footer class="footer">
    <div class="container">
      <div class="row">
      <div class="col-lg-4 col-md-4 col-sm-5 col-xs-7">
        &copy Jeppiaar Engineering College
        </div>
         <div class="col-lg-3 col-md-3 col-sm-2 col-xs-2"></div>
         <div class="col-lg-5 col-md-5 col-sm-5 col-xs-3">
         Designed by Eugine(IT-department)
         </div>
        </div>
      </div>
</footer>
<!-- Bootstrap core JavaScript -->
        <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
</body>
</html>