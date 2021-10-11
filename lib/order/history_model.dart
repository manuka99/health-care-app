class HistoryModel {
  final String id;
  final String status;
  final String date;
  final String amount;

  HistoryModel({
    required this.id,
    required this.status,
    required this.date,
    required this.amount,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
      id: json['id'],
      status: json['status'],
      date: json['date'],
      amount: json['amount']
    );
}

List<HistoryModel> listOfHistory = [
  HistoryModel(
    id: "Order#20211022589", 
    status: "Pending", 
    date: "Pending", 
    amount:"Pending"
),
HistoryModel(
    id: "Order#2021033596", 
    status: "Ready", 
    date: "2021/09/25", 
    amount:"Rs.2500.00"
),
HistoryModel(
    id: "Order#2021368596", 
    status: "Paid", 
    date: "2021/02/28", 
    amount:"Rs.5000.00"
),
HistoryModel(
    id: "Order#20211022589", 
    status: "Delivered", 
    date: "2021/02/05", 
    amount:"1200.00"
),
HistoryModel(
    id: "Order#20211022600", 
    status: "Delivered", 
    date: "2020/12/26", 
    amount:"500.00"
),
];
