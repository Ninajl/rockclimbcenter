$(function () {
    var dragging = false,
        target_wp,
        o_x, o_y, h_x, h_y, last_angle;
    $('#image').mousedown(function (e) {
        h_x = e.pageX;
        h_y = e.pageY; // clicked point
        e.preventDefault();
        e.stopPropagation();
        dragging = true;
        target_wp = $(e.target).closest('#image');
        if (!target_wp.data("origin")) target_wp.data("origin", {
            left: target_wp.offset().left,
            top: target_wp.offset().top
        });
        o_x = target_wp.data("origin").left;
        o_y = target_wp.data("origin").top; // origin point

        last_angle = target_wp.data("last_angle") || 0;
    })

    $(document).mousemove(function (e) {
        if (dragging) {
            var s_x = e.pageX,
                s_y = e.pageY; // start rotate point
            if (s_x !== o_x && s_y !== o_y) { //start rotate
                var s_rad = Math.atan2(s_y - o_y, s_x - o_x); // current to origin
                s_rad -= Math.atan2(h_y - o_y, h_x - o_x); // handle to origin
                s_rad += last_angle; // relative to the last one
                var degree = (s_rad * (360 / (2 * Math.PI)));
                target_wp.css('-moz-transform', 'rotate(' + degree + 'deg)');
                target_wp.css('-moz-transform-origin', '50% 50%');
                target_wp.css('-webkit-transform', 'rotate(' + degree + 'deg)');
                target_wp.css('-webkit-transform-origin', '55% 75%');
                target_wp.css('-o-transform', 'rotate(' + degree + 'deg)');
                target_wp.css('-o-transform-origin', '50% 50%');
                target_wp.css('-ms-transform', 'rotate(' + degree + 'deg)');
                target_wp.css('-ms-transform-origin', '50% 50%');
            }
        }
    }) // end mousemove

    $(document).mouseup(function (e) {
        dragging = false
        var s_x = e.pageX,
            s_y = e.pageY;

        // Saves the last angle for future iterations
        var s_rad = Math.atan2(s_y - o_y, s_x - o_x); // current to origin
        s_rad -= Math.atan2(h_y - o_y, h_x - o_x); // handle to origin
        s_rad += last_angle;
        target_wp.data("last_angle", s_rad);
    })
})

// function changeDescription() {
//   $('img').click(function() {
//     console.log("hi");
//   });
//   $(".rotation").append("<p>In this position, the jug handhold is know as a <b>Sidepull</b>, because you pull sideways on it instead of straight down. It is vertically or diagnolly oriented and is located to your side rather than above you when you are climbing. To create this move, you oppose the pulling force that your hand and arm exert on the hold with your feet or opposite hand.Usually, you will pull outward on the sidepull hold, while pushing a foot in the opposite direction with the opposing forces keeping you in place. For example, if the sidepull is to your left, then lean right to maximize the opposition with your body's weight. Sidepulls also work great by turning your hip toward the wall and standing on the outside edge of your clibing shoe. THis position often allows you to make a high reach with your free hand.</p> ");
// }
// function rotationDegree() {
  // $("#image").mousemove(function (e) {
  //   console.log("hi");

	//    if (dragging) {
  //   var s_x = e.pageX,
  //       s_y = e.pageY; // start rotate point
  //   if (s_x !== o_x && s_y !== o_y) { //start rotate
  //       var s_rad = Math.atan2(s_y - o_y, s_x - o_x); // current to origin
  //       s_rad -= Math.atan2(h_y - o_y, h_x - o_x); // handle to origin
  //       s_rad += last_angle; // relative to the last one
  //       var degree = (s_rad * (360 / (2 * Math.PI)));
  //       target_wp.css('-moz-transform', 'rotate(' + 90 + 'deg)');
  //
  // }

// 	return “side pull description”;
// }	else if (hold.value === 180deg) {
// 	return “undercling description”;
// }	else if (hold.value === 270deg) {
// 	return “Gaston description”;
	// }
// });
