
$(document).on('turbolinks:load', function () {
    $("button").on("click", function () {
      $(".result").hide();
      var qNum = $("ul li").length;
      if ($("ul li input:checked").length < qNum) {
        alert("未回答の項目があります");
      }
      else {
        var typeANum = $(".typeA:checked").length,
          typeBNum = $(".typeB:checked").length,
          typeCNum = $(".typeC:checked").length,
          typeDNum = $(".typeD:checked").length,
          typeENum = $(".typeE:checked").length;
        const max = Math.max(typeANum, typeBNum, typeCNum, typeDNum, typeENum); 
        if (typeANum >= max) {
          $(".ResultA").fadeIn();
        } else if (typeBNum >= max) {
          $(".ResultB").fadeIn();
        } else if (typeCNum >= max) {
          $(".ResultC").fadeIn();
        } else if (typeDNum >= max) {
          $(".ResultD").fadeIn();
        } else if (typeENum >= max) {
          $(".ResultE").fadeIn();
        }
      }
    });
  });


