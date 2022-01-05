class UserData {
  String hockey;
  int pendingRequestCount;
  int unReadNotification;
  Pagination pagination;
  List<Data> data;

  UserData(this.hockey, this.pendingRequestCount, this.unReadNotification,
      this.pagination, this.data);

  UserData.fromJson(Map<String, dynamic> map) {
    if (map['data'] != null) {
      hockey = map['hockey'];
      pendingRequestCount = map['pendingRequestCount'];
      unReadNotification = map['unReadNotification'];

      if (map[pagination] != null) {
        pagination = Pagination.fromJson(map['pagination']);
      }
      if (map['data'] != null) {
        data = <Data>[];
        map['data'].forEach((element) {
          data.add(Data.fromJson(element));
        });
      }
    }
  }
}

class Pagination {
  int page;
  int total;
  int max;

  Pagination(this.page, this.total, this.max);

  Pagination.fromJson(Map<String, dynamic> map) {
    page = map['page'];
    total = map['total'];
    max = map['max'];
  }
}

class Data {
  int id;
  bool heart;
  String username;
  int likecount;
  int createdBy;
  String caption;
  List<String> image;
  List<String> types;
  List<Tags> tags;
  List<Comments> comments;
  Event event;

  Data(
      this.event,
      this.tags,
      this.caption,
      this.createdBy,
      this.likecount,
      this.comments,
      this.id,
      this.types,
      this.image,
      this.username,
      this.heart);

  Data.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    heart = map['heart'];
    username = map['username'];
    likecount = map['likecount'];
    createdBy = map['createdBy'];
    caption = map['caption'];
    if (map['image'] != null) {
      image = List<String>.from(map['image']);
    }
    if (map['types'] != null) {
      types = List<String>.from(map['types']);
    }
    if (map['tags'] != null) {
      tags = <Tags>[];
      map['tags'].forEach((element) {
        tags.add(Tags.fromJson(element));
      });
    }
    if (map['comments'] != null) {
      comments = <Comments>[];
      map['comments'].forEach((element) {
        comments.add(Comments.fromJson(element));
      });
    }
    if (map['event'] != null) {
      Event.fromJson(map['event']);
    }
  }
}

class Tags {
  String name;
  int id;

  Tags(this.id, this.name);

  Tags.fromJson(Map<String, dynamic> map) {
    name = map['name'];
    id = map['id'];
  }
}

class Comments {
  int createdBy;
  String createdAt;
  String comment;

  Comments(this.createdBy, this.comment, this.createdAt);

  Comments.fromJson(Map<String, dynamic> map) {
    createdBy = map['createdBy'];
    createdAt = map['createdAt'];
    comment = map['comment'];
  }
}

class Event {
  int eventId;
  String profilepic;
  bool saveEvent;
  int likecount;
  int createdBy;
  String caption;
  List<Tags> tags;

  Event(this.createdBy, this.likecount, this.caption, this.tags, this.saveEvent,
      this.profilepic, this.eventId);

  Event.fromJson(Map<String, dynamic> map) {
    eventId = map['eventId'];
    profilepic = map['profilepic'];
    saveEvent = map['saveEvent'];
    likecount = map['likecount'];
    createdBy = map['createdBy'];
    caption = map['caption'];
    tags = <Tags>[];
    map['tags'].forEach((element) {
      tags.add(Tags.fromJson(element));
    });
  }
}
