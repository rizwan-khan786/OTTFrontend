class Subscription {
  final String? id;
  final String? user;
  final Plan? plan;
  final String? status;
  final String? episodeId;
  final String? episodeName;
  final String? orderId;
  final int? amount;
  final List<HistoryItem>? history;
  final String? createdAt;
  final String? updatedAt;
  final int? v;
  final String? endAt;
  final String? startAt;

  Subscription({
    this.id,
    this.user,
    this.plan,
    this.status,
    this.episodeId,
    this.episodeName,
    this.orderId,
    this.amount,
    this.history,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.endAt,
    this.startAt,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      id: json['_id'] as String?,
      user: json['user'] as String?,
      plan: json['plan'] != null ? Plan.fromJson(json['plan'] as Map<String, dynamic>) : null,
      status: json['status'] as String?,
      episodeId: json['episodeId'] as String?,
      episodeName: json['episodeName'] as String?,
      orderId: json['orderId'] as String?,
      amount: json['amount'] as int?,
      history: json['history'] != null
          ? (json['history'] as List<dynamic>)
              .map((e) => HistoryItem.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: json['__v'] as int?,
      endAt: json['endAt'] as String?,
      startAt: json['startAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['user'] = user;
    data['plan'] = plan?.toJson();
    data['status'] = status;
    data['episodeId'] = episodeId;
    data['episodeName'] = episodeName;
    data['orderId'] = orderId;
    data['amount'] = amount;
    data['history'] = history?.map((e) => e.toJson()).toList();
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = v;
    data['endAt'] = endAt;
    data['startAt'] = startAt;
    return data;
  }

  bool get isActive {
    if (status != 'active' || endAt == null) return false;
    try {
      final endDateTime = DateTime.parse(endAt!);
      return endDateTime.isAfter(DateTime.now());
    } catch (e) {
      return false;
    }
  }
}

class Plan {
  final String? id;
  final String? code;
  final int? v;
  final bool? active;
  final String? createdAt;
  final int? durationDays;
  final int? price;
  final String? scope; // 'episode' or 'all'
  final String? title;
  final String? updatedAt;

  Plan({
    this.id,
    this.code,
    this.v,
    this.active,
    this.createdAt,
    this.durationDays,
    this.price,
    this.scope,
    this.title,
    this.updatedAt,
  });

  factory Plan.fromJson(Map<String, dynamic> json) {
    return Plan(
      id: json['_id'] as String?,
      code: json['code'] as String?,
      v: json['__v'] as int?,
      active: json['active'] as bool?,
      createdAt: json['createdAt'] as String?,
      durationDays: json['durationDays'] as int?,
      price: json['price'] as int?,
      scope: json['scope'] as String?,
      title: json['title'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['code'] = code;
    data['__v'] = v;
    data['active'] = active;
    data['createdAt'] = createdAt;
    data['durationDays'] = durationDays;
    data['price'] = price;
    data['scope'] = scope;
    data['title'] = title;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class HistoryItem {
  final String? at;
  final String? status;
  final String? note;
  final String? id;

  HistoryItem({
    this.at,
    this.status,
    this.note,
    this.id,
  });

  factory HistoryItem.fromJson(Map<String, dynamic> json) {
    return HistoryItem(
      at: json['at'] as String?,
      status: json['status'] as String?,
      note: json['note'] as String?,
      id: json['_id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['at'] = at;
    data['status'] = status;
    data['note'] = note;
    data['_id'] = id;
    return data;
  }
}