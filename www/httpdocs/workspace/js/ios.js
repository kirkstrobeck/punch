$(document).ready(
    function() 
    {

        $('#nav li.top').bind(
            'click', 
            function() 
            {
                var obj = $(this).children('ul');
                
                if(obj.is(":visible"))
                {
                    obj.hide();
                }
                else
                {
                    obj.show();
                }
            }
        );
        
    }
);