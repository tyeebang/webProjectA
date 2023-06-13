let s1 = document.getElementsByClassName("s1")[0];
let s2 = document.getElementsByClassName("s2")[0];
let s3 = document.getElementsByClassName("s3")[0];
let s4 = document.getElementsByClassName("s4")[0];
let s5 = document.getElementsByClassName("s5")[0];

window.addEventListener("scroll", function () {
  let value = window.scrollY;
  console.log("scroll", value);
  if (value > 800 && value < 1875) {
    // scrollY의 값이 300 초과 혹은 1875 미만인 경우 애니메이션 동작
    // style.css의 disappear keyframe(A, B포함) 적용, forwards 속성은 처음 상태로 다시 되돌려 줌.
    s1.style.animation = "mySlide 1.5s ease-out";
    s2.style.animation = "mySlideA 1.5s ease-out";
    s3.style.animation = "mySlideA 1.5s ease-out";
    s4.style.animation = "mySlideB 1.5s ease-out";
    s5.style.animation = "mySlideB 1.5s ease-out";
  } else {
    // scrollY값이 300 이하 혹은 1875 이상인 경우 다시 애니메이션 동작
    s1.style.animation = "disappear 1.5s ease-out forwards";
    s2.style.animation = "disappearA 1.5s ease-out forwards";
    s3.style.animation = "disappearA 1.5s ease-out forwards";
    s4.style.animation = "disappearB 1.5s ease-out forwards";
    s5.style.animation = "disappearB 1.5s ease-out forwards";
  }
});

function logout(){
    if(!confirm('정말 로그아웃하시겠습니까?')){
        return false;
    } else {
		location.href= 'logout.jsp';
	}
};