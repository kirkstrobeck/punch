
var galleryWidth = 0;
        
$(window).load(
   
    function () 
    {
        $.each(
            $('#photos img'),
            function(index, value)
            {
                galleryWidth += $(value).width();
                galleryWidth += 10;
            }
        );
        
        galleryWidth -= 10;
        
        $('#photos').width(galleryWidth).animate(
            {
                opacity: 1
            }, 
            1500, 
            'easeInOutQuint',
            function() 
            {
                // Animation complete.
            }
        );
    

        $('#photos *:last-child').addClass('no_right_margin');


        $('a').bind(
            'click', 
            function() 
            {
                var host = $.url.setUrl(this.href).attr("host");
                
                if(
                    host != 'www.server.com' &&
                    host != 'server.com' &&
                    host != 'punch'
                )
                {
                    window.open(this.href);
                }
                else
                {
                    window.location(this.href);
                }

                return false;
            }
        );
        
        
    }
);



// I guess this does the multi-tier nav or something..

// Javascript originally by Patrick Griffiths and Dan Webb.
// http://htmldog.com/articles/suckerfish/dropdowns/
sfHover = function() {
   var sfEls = document.getElementById("nav").getElementsByTagName("li");
   for (var i=0; i<sfEls.length; i++) {
      sfEls[i].onmouseover=function() {
         this.className+=" hover";
      }
      sfEls[i].onmouseout=function() {
         this.className=this.className.replace(new RegExp(" hover\\b"), "");
      }
   }
}
if (window.attachEvent) window.attachEvent("onload", sfHover);



/*

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'XXXX']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

*/