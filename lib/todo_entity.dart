class ToDoEntity {
  //할일에 표시할 각 요소들을 하나의 객체로 관리할 클래스 정의
  final String title;
  final String? description; //세부설명을 쓰지 않아도 오류 없도록
  final bool isFavorite;
  final bool isDone;

  ToDoEntity({
    required this.title, //나머진 기본처리 가능, 다만 할일 목록 제목은 필수
    this.description,
    this.isFavorite = false,
    this.isDone = false, // TODO 했다 말았다를 넘어서 완성도 개념도 추가해 보기
  });
}
