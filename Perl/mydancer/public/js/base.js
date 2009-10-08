$(document).ready(function(){
    
    $('#view_images').click(function(){
        var values = $(this).attr('rel');
        var length = values.length;
        var pos = values.indexOf('-');
        var v_quantity = values.substring(0, pos);
        var v_orden = values.substring(pos + 1, length);
        
        $('#images').load('/b/quantity/'+v_quantity+'/orden/'+v_orden);
    });
    
    $('img').live('click',function(){
       alert('Image name ' + $(this).attr('id')) ;
    });
});