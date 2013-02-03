
$(document).ready(function(){
     
    $("#signupform").validate({
        rules: {
        	 "member[email]":{
                required: true,
                email: true,
				remote: {
                   data: {
                        member_email: function(){
                            return $('#member_email').val();
                        }
                    },
                    url: "/mainpage/check_email",
                    type: "get"
                    
                }
            },
            
            "member[password]":{
                required: true,
                minlength:6
				
            },
            
			 "member[realname]":{
                required: true
			},
			"member[phone]":{
			    required: true,
				number:true,
				rangelength:[11,11]
			},
		    "member[resume_url]":{
			  required:true,
			  accept: "pdf|doc|docx"
			}
		
        },
         errorPlacement: function(error, element) {
            
                error.appendTo( element.parent().next()  );

        },
        // specifying a submitHandler prevents the default submit, good for the demo
        submitHandler: function(form) {
                        form.submit();
        },
        // set this class to error-labels to indicate valid fields
        success: function(label) {
            // set &nbsp; as text for IE
            label.html("&nbsp;").addClass("checked");
        }
        
    });
   
});

