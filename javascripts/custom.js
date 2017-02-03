$('.dropdown-toggle').dropdown();
$('body').on('hidden.bs.modal', '.modal', function () {
  $(this).removeData('bs.modal');
});
$(document).on('click', '.yamm .dropdown-menu', function(e) {
  e.stopPropagation()
})
var overflowContainer = function (overflowSelector, parentOverflowSelector, differenceSelector, differenceSelectorLast) {
    return $(overflowSelector).css("max-height", ($(parentOverflowSelector).height() - $(differenceSelector).outerHeight() - $(differenceSelectorLast).outerHeight()));
}

$(document).ready(function () {
    setOverflow();
});

$(window).on('resize', function() {
    overflowContainer('.overflowContainerSX', '.parentOverflowContainer', '.otherOneOverflowSX');
    overflowContainer('.overflowContainerDX', '.parentOverflowContainer', '.otherOneOverflowDX', '.otherOneOverflowLastDX');
});

function setOverflow() {
    overflowContainer('.overflowContainerSX', '.parentOverflowContainer', '.otherOneOverflowSX');
    overflowContainer('.overflowContainerDX', '.parentOverflowContainer', '.otherOneOverflowDX', '.otherOneOverflowLastDX');
}
