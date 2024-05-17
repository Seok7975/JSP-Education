$(document).ready(function(){
  $('#main_navigation a').click(function() {
    // 내비게이션 버튼

    // 변수를 선언합니다.
    var target = $(this).attr('data-target');

    // 클래스를 적용합니다.
    $(':not([data-name=' + target + ']').removeClass('active');
    $('[data-name=' + target + ']').addClass('active');
  });

  // 캐릭터 이동 버튼
  var currentPosition = 1;
  $('#character > a:nth-child(1)').click(function(){
    currentPosition -= 1;
    if(currentPosition < 1) {
      currentPosition = 3;
    }
    $('article').removeClass('show');
    $('article:nth-of-type(' + currentPosition +')').addClass('show');
  });
  $('#character > a:nth-child(2)').click(function(){
    currentPosition += 1;
    if(currentPosition > 3) {
      currentPosition = 1;
    }
    $('article').removeClass('show');
    $('article:nth-of-type(' + currentPosition +')').addClass('show');
  });
});