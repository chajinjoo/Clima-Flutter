import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2(); //대입하고
  task3(task2Result); //인자값에 할당
}

void task1() {
  String result = '작업 1 data';
  print('작업 1 완료');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result;

  await Future.delayed(threeSeconds, () {
    result = '작업 2 data';
    //첫번째 인자는 지연시간, 두번째는 지연후 실행될 값
    print('작업 2 완료');
  });

  return result; //문자열 값을 리턴
}

void task3(String task2Data) {
  String result = '작업 3 data';
  print('$task2Data 를 포함하여 작업 3 완료');
}
