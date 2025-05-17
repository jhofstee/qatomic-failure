struct QTypedArrayData {
  int _M_i;
  void ref() {__atomic_fetch_add(&_M_i, 1, int()); }
};

struct QArrayDataPointer {
    QArrayDataPointer();
    QArrayDataPointer(QArrayDataPointer &other) : d(other.d), ptr(other.ptr) {
        d->ref();
    }
    QTypedArrayData *d;
    int *ptr;
};

struct QMovableArrayOps : QArrayDataPointer {
  void insertOne(QArrayDataPointer);
  void emplace() {
     QArrayDataPointer dummy;
     insertOne(dummy);
  }
};

int main() {
  QMovableArrayOps d;
  d.emplace();
  return 0;
}
