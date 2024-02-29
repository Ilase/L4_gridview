class Row{
int id;
String carName;
String imgPath;
String description;

Row(this.id, this.carName, this.imgPath, this.description);
}

List<Row> carList = [
  Row(001, 'LADA Granta', 'https://static.lada.ru/images/v6/cars/configurator/commercial/Granta_LCV.png', 'Катофал'),
]