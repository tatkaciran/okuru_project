part of '../../reading_now.dart';

class _NotesView extends StatelessWidget {
  const _NotesView();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45.0),
                bottomLeft: Radius.circular(45.0),
              ),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text("Yours"),
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(45.0),
                bottomRight: Radius.circular(45.0),
              ),
            ),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text("Others"),
          ),
        )
      ],
    );
  }
}
