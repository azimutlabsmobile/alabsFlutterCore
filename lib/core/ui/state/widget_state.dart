abstract class CoreWidgetState<T extends StatefulWidget> extends State<T> with PostFrameMixin {}

mixin PostFrameMixin<T extends StatefulWidget> on State<T> {
  /**
   * этот метод нужно использовать при инициализации метода блока (пример. ниже)
   * @override
      void initState() {
      _cubit = getIt.get();
      super.initState();
      postFrame(_cubit.init);
      }
   *
   * такой способ решает проблему первого эмита которую слушатели блока не видят
   */
  void postFrame(void Function() callback) =>
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          callback();
        }
      });
}