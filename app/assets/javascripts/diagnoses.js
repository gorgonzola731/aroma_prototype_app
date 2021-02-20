
$(function(){
  $("button").on("click", function(){
    $(".result").hide();   
    var qNum = $("ul li").length;
    if( $("ul li input:checked").length < qNum ){
      alert("未回答の項目があります");
    } 
    else {
        var typeANum = $(".typeA:checked").length,
            typeBNum = $(".typeB:checked").length,
            typeCNum = $(".typeC:checked").length,
            typeDNum = $(".typeD:checked").length,
            typeENum = $(".typeD:checked").length;
        if( typeANum >= typeBNum && typeANum >= typeCNum && typeANum >= typeDNum && typeANum >= typeENum) {
            $(".ResultA").fadeIn();
        } else if( typeBNum >= typeANum && typeBNum >= typeCNum && typeBNum >= typeDNum && typeBNum >= typeENum) {
            $(".ResultB").fadeIn();
        } else if( typeCNum >= typeANum && typeCNum >= typeBNum && typeCNum >= typeDNum && typeCNum >= typeENum) {
            $(".ResultC").fadeIn();
        } else if( typeDNum >= typeBNum && typeDNum >= typeCNum && typeDNum >= typeANum && typeDNum >= typeENum) {
            $(".ResultD").fadeIn();
        } else if( typeENum >= typeBNum && typeENum >= typeCNum && typeENum >= typeANum && typeENum >= typeDNum) {
            $(".ResultE").fadeIn();
      }
    }
  });
});


