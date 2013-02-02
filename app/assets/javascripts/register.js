
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
                    url: "/check_email",
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
        messages: {
            "member[email]":{
              required: "请输入有效的邮箱地址",
			        email:"请输入有效的邮箱地址",
			        remote: "已被使用"
			      },
            "member[password]":{
               required: "请输入密码",

                minlength: jQuery.format("至少输入 {0} 个字符")

            },
			"member[realname]":{
			required: "请输入"
			},
			"member[phone]":{
			required: "请输入",
			number:"只能输入数字噢",
			rangelength:"号码的位数应该是{0}位"
			},
			"member[resume_url]":{
			required: "请上传word或者pdf格式的简历",
			accept: "简历格式不对"
			}
        },
         errorPlacement: function(error, element) {
            
                error.appendTo( element.next() );

        },
        // specifying a submitHandler prevents the default submit, good for the demo
        submitHandler: function(form) {
            alert("submitted!");
                        form.submit();
        },
        // set this class to error-labels to indicate valid fields
        success: function(label) {
            // set &nbsp; as text for IE
            label.html("&nbsp;").addClass("checked");
        }
        
    });
   
});

