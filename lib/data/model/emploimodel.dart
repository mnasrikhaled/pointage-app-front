import '../../core/constant/color.dart';

class EmploiInfos {
  List<Map<String, dynamic>>? desc;

  EmploiInfos({
    this.desc,
  });

  List<Map<String, dynamic>> Infos() {
    return [
      {
        'bgColor': ColorApp.kYellowLight,
        'nomEns': 'farhat',
        'prenomEns': 'mohran',
        'module': 'JEE',
        'salle': 'salle 12 ',
        'classe': 'Lsi 1',
        'heureDebut': '8:30 am ',
        'heureFin': ' 10:00 am '
      },
      {
        'bgColor': ColorApp.kBlueLight,
        'nomEns': 'farhat',
        'prenomEns': 'mohran',
        'module': 'JEE',
        'salle': 'salle 12 ',
        'classe': 'Lsi 1',
        'heureDebut': '8:30 am ',
        'heureFin': ' 10:00 am '
      },
      {
        'bgColor': ColorApp.kRedLight,
        'nomEns': 'farhat',
        'prenomEns': 'mohran',
        'module': 'JEE',
        'salle': 'salle 12 ',
        'classe': 'Lsi 1',
        'heureDebut': '8:30 am ',
        'heureFin': ' 10:00 am '
      },
    ];
  }
}
