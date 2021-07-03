class Pull{

    int ?  id;
    String ? nickname;
    String ? Contributions_count;
    String ? github_profile;

  Pull({
    this.id,
    this.Contributions_count,
    this.github_profile,
    this.nickname
  });
  
  factory Pull.fromMapJson(Map< String, dynamic> pull){
    return Pull(
      nickname: pull['nickname'],
      id: pull['id'],
      github_profile: pull['github_profile'] ,
      Contributions_count: pull['Contributions_count'] 
      );
  }
}