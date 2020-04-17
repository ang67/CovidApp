
// class Statistics {
//   final String totalConfirmed;
//   final String totalDeath;
//   final String totalContry;

//   Statistics(this.totalConfirmed, this.totalDeath, this.totalContry);

//   Statistics.fromJson(Map<String, dynamic> json)
//       : totalConfirmed = json['totalConfirmed'],
//         totalDeath = json['totalDeath'],
//         totalContry = json['totalContry'];

//   Map<String, dynamic> toJson() =>
//       {'toastConfirmed': 2000984, 'totalDeath': 128071, 'totalContry': 185};
// }
class Pays {
  String name;
  int nbConfirmed;
  int nbDeath;

  Pays(this.name, this.nbConfirmed, this.nbDeath);

  String getName() {
    return this.name;
  }

  int getNbConfirmed() {
    return this.nbConfirmed;
  }

  int getNbDeath() {
    return this.nbDeath;
  }
}
