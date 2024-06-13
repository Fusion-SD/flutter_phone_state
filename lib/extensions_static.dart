Duration sinceNow(DateTime self) => -(self.difference(DateTime.now()));

X? find<X>(List<X?>? self, bool Function(X? input) filter) {
  return self?.firstWhere(filter, orElse: () => null as X?);
}

X? lastOrNull<X>(List<X?>? self, bool Function(X? input) filter) {
  return self?.lastWhere(filter, orElse: () => null as X?);
}

X? firstOrNull<X>(List<X?>? self, bool Function(X? input) filter) {
  return self?.firstWhere(filter, orElse: () => null as X?);
}

String? truncate(String? self, int length) {
  if (self == null) return self;
  if (self.length <= length) {
    return self;
  } else {
    return self.substring(0, length);
  }
}

bool isNullOrEmpty(String? self) {
  return self?.isNotEmpty != true;
}

bool isNotNullOrEmpty(String self) => isNullOrEmpty(self);

bool isNullOrBlank(String? self) => self == null || self.trim().isEmpty == true;

bool isNotNullOrBlank(String self) => !isNullOrBlank(self);

String orEmpty(String? self) {
  if (self == null) return '';
  return self;
}

String value(self) => '$self'.replaceAll(RegExp('.*\\.'), '');
