import 'dart:core';

class InstructionsModel {
  String name;
  String description;
  String image;

  InstructionsModel({
    required this.name,
    required this.description,
    required this.image,
  });
}

class Instructions {
  static List<InstructionsModel> earthquake = [
    InstructionsModel(
        name: "ما هي الاجراءات التي يمكن اتخاذها عند حدوث الزلزال ؟ ",
        description: "1. البقاء هادئًا والابتعاد عن النوافذ والأشياء الزجاجية."
            "2. التوجه إلى مكان آمن في الداخل مثل تحت طاولة قوية أو إلى زاوية الغرفة.",
        image: "asset/images/earthquake/N1.jpg"),
    InstructionsModel(
        name: "     ",
        description: "3. تجنب الوقوف تحت المصاعد أو المرايا أو الأضواء الكبيرة."
            "4. احمِ رأسك ورقبتك بيديك واحمِ جسمك بعد ذلك.",
        image: "asset/images/earthquake/N2.jpg"),
    InstructionsModel(
        name: "      ",
        description: "5. تجنب استخدام السلالم خلال الزلزال."
            "6. إذا كنت في الخارج، ابق على مسافة من الأبنية والأشجار والأعمدة.",
        image: "asset/images/earthquake/N3.jpg"),
    InstructionsModel(
      name: "      ",
      description:
          "7. بعد انتهاء الزلزال، تحقق من سلامة نفسك والآخرين وابحث عن أي أضرار قد تحدث.",
      image: "asset/images/earthquake/N4.jpg",
    ),
    InstructionsModel(
      name: "     ",
      description: "8. احتفظ بحقيبة الطوارئ تحتاجها في حالات الطوارئ.",
      image: "asset/images/earthquake/N5.jpg",
    ),
    InstructionsModel(
      name: "    ",
      description:
          "تذكر دائمًا أن التدريب والتحضير مهمان للتصرف بشكل صحيح خلال حدوث زلزال.",
      image: "asset/images/earthquake/N6.jpg",
    ),
  ];

  static List<InstructionsModel> fire = [
    InstructionsModel(name:"هنا بعض الإجراءات التي يمكن اتخاذها لحماية نفسك خلال حدوث حريق:",
        description: "1. الابتعاد عن المصدر: إذا شب حريق في مكان معين، حاول الابتعاد عنه بأمان."
            "لا تحاول العودة لإنقاذ أشياءك الشخصية."
            "2. التنبيه للآخرين: إذا كنت تعلم بوجود حريق، قم بتنبيه الآخرين في المبنى وساعدهم على الخروج بأمان. ",
        image: "asset/images/fire/N1.jpg"),

    InstructionsModel(name:"    ",
        description: "3. الزجاج المنخفض: إذا كان هناك دخان كثيف، ابق منخفضًا على الأرض حيث يكون الهواء أكثر نقاءً."
                  "4. إغلاق الأبواب والنوافذ: إذا كنت في غرفة مغلقة، قم بإغلاق الأبواب والنوافذ لمنع انتشار الحريق.",
        image: "asset/images/fire/N2.jpg"),

    InstructionsModel(name:"   ",
        description: "5. استخدام المناشف المبللة: إذا لم يكن هناك طريق للخروج من المبنى، استخدم مناشف مبللة لتغطية فمك وأنفك لتصفية الهواء."
            "6. الاتصال بالدفاع المدني: اتصل بفرق الدفاع المدني أو الإطفاء وأبلغهم عن موقع الحريق وعدد الأشخاص المحتجزين.",
        image: "asset/images/fire/N3.jpg"),

    InstructionsModel(name:"    ",
        description: "7. تجنب استخدام المصاعد: استخدم السلالم عند الخروج من المبنى، وتجنب استخدام المصاعد التي قد تتعطل أثناء الحريق."
            "8. التجمع في نقطة التجمع: بمجرد الخروج من المبنى، تجمع في نقطة التجمع المحددة وتأكد من سلامة جميع الأشخاص.",
        image: "asset/images/fire/N4.jpg"),

    InstructionsModel(name:"    ",
        description: "تذكر دائمًا أهمية التحضير والتدريب على كيفية التصرف خلال حالات الطوارئ مثل الحرائق.",
        image: "asset/images/fire/N5.jpg"),
  ];

  static List<InstructionsModel> covid19 =[
    InstructionsModel(
      name: "لحماية نفسك والآخرين من فيروس كورونا (COVID-19)، يمكنك اتباع الإجراءات الوقائية التالية:",
      description: "1. ارتداء الكمامة: ارتداء الكمامة عند الخروج إلى الأماكن العامة والتجمعات لحماية نفسك والآخرين من انتقال الفيروس."
          "2. غسل اليدين: غسل اليدين بانتظام بالماء والصابون لمدة لا تقل عن 20 ثانية، أو استخدام معقم لليدين يحتوي على نسبة 60٪ على الأقل من الكحول.",
      image: "asset/images/COVID19/virus.jpg",
    ),

    InstructionsModel(
      name: "   ",
      description: "3. الابتعاد الاجتماعي: حافظ على مسافة آمنة من الآخرين (مسافة تبلغ حوالي متر واحد) لتجنب انتقال العدوى."
          "4. تجنب لمس الوجه: تجنب لمس وجهك باليدين غير المغسولة، خاصة العينين والأنف والفم.",
      image: "asset/images/COVID19/stay_home.jpg",
    ),

    InstructionsModel(
      name: "    ",
      description: "5. تغطية الفم والأنف عند العطس أو السعال: استخدام منديل ورقي أو ثني الكوع عند العطس أو السعال لتجنب نشر القطيرات المحملة بالفيروس."
          "6. تنظيف وتعقيم الأسطح: نظف وعقم الأسطح المستخدمة بانتظام، خاصة تلك التي يلمسها العديد من الأشخاص كأبواب المنازل وأزرار المصاعد.",
      image: "asset/images/COVID19/wear_mask.jpg",
    ),

    InstructionsModel(
      name: "    ",
      description: "7. الابتعاد عن التجمعات: تجنب التجمعات الكبيرة والأماكن المزدحمة قدر الإمكان."
          "8. البقاء في المنزل إذا كنت مريضًا: في حالة ظهور أعراض مثل الحمى والسعال وضيق التنفس، ابق في المنزل واتصل بالجهات الطبية المحلية.",
      image: "asset/images/COVID19/Premium Vector _ Coronavirus poster design with boy wearing mask.jpg",
    ),

    InstructionsModel(
      name: "      ",
      description: "9. متابعة التطورات: تابع أحدث التوجيهات والتعليمات من قبل السلطات الصحية المحلية والعالمية."
          "هذه بعض الإجراءات التي يمكن اتباعها لحماية نفسك عند حدوث وباء كورونا. تذكر أن التزامك بهذه الإجراءات يساهم في حماية نفسك والآخرين من انتشار الفيروس.",
      image: "asset/images/COVID19/earthwithmask.jpg",
    ),
  ];

}

//اية لازم تعملي لكل تاب كلاس ركزي
