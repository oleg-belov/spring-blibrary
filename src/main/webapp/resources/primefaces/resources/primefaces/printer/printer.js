(function(b){var a;b.fn.jqprint=function(d){a=b.extend({},b.fn.jqprint.defaults,d);var c=(this instanceof jQuery)?this:b(this);if(a.operaSupport&&b.browser.opera){var e=window.open("","jqPrint-preview");e.document.open();var g=e.document}else{var f=b("<iframe  />");if(!a.debug){f.css({position:"absolute",width:"0px",height:"0px",left:"-600px",top:"-600px"})}f.appendTo("body");var g=f[0].contentWindow.document}if(a.importCSS){if(b("link[media=print]").length>0){b("link[media=print]").each(function(){g.write("<link type='text/css' rel='stylesheet' href='"+b(this).attr("href")+"' media='print' />")})}else{b("link").each(function(){g.write("<link type='text/css' rel='stylesheet' href='"+b(this).attr("href")+"' />")})}}if(a.printContainer){g.write(c.outer())}else{c.each(function(){g.write(b(this).html())})}g.close();(a.operaSupport&&b.browser.opera?e:f[0].contentWindow).focus();setTimeout(function(){(a.operaSupport&&b.browser.opera?e:f[0].contentWindow).print();if(e){e.close()}},1000)};b.fn.jqprint.defaults={debug:false,importCSS:true,printContainer:true,operaSupport:true};jQuery.fn.outer=function(){return b(b("<div></div>").html(this.clone())).html()}})(jQuery);