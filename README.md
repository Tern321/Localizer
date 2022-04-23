
!!! Backup your project before first use !!!
 
An example of using the project localization utility.
Add new target - Localizer added to the project.
In scheme add $(PROJECT_DIR) to arguments.
when you run it, it will go through all .swift .storyboard and .xib files, find the values ​​​​in them that need to be localized and add them to the Localizable.strings and .strings files related to the UI

////////
how it works for values ​​in code
we make changes to the code, say add an alert with the text "My new message" .localized
before the commit, we run target - Localizer and it adds a new value to each of the Localizable.strings files, i.e. they will contain lines like

//RatingDialogViewController.swift
"My new message" = "My new message";

change the line in the file for the Russian locale to
"My new message" = "Мое новое сообщение";
done, you can commit.

////////
how it works for values ​​in storyboard and xib
add a new button in IB with the text "My new button"
before the commit, we run target - Localizer and it adds a new value to each of the Localizable.strings files, and to the ConnectionErrorView.strings

while for each locale in Localizable.strings will appear
//ConnectionErrorView.xib
"My new button" = "My new button";

and in ConnectionErrorView.strings
"fGs-8a-dfc.text" = "My new button";

we change ONLY the value in Localizable.strings to
"My new button" = "Моя новая кнопка";
run Localizer again. Done, you can commit
value in ConnectionErrorView.strings will be updated automatically

advantages of this approach
we cannot skip any non-localized value
we do not create new enums and remove duplication of translations
we don't need to do any extra work in IB to localize the text
*/


/*
!!! Сделайте бекап проекта перед первым использованием !!!
 
Пример использования утилиты для локализации проекта
в проект добавлен новый target - Localizer
в scheme необходимо довабить $(PROJECT_DIR) в arguments
при его запуске он пройдет по всем .swift .storyboard и .xib файлам, найдет в них значения которые надо локализовать и добавит их в Localizable.strings и .strings файлы относящиеся к UI

////////
как это работает для значений в коде
мы вносим изменения в код, скажем добавляем алерт с текстом "My new message" .localized
перед коммитом мы запускаем target - Localizer и он добавляет новое значение в каждый из Localizable.strings файлов, т.е. в них появятся строки вроде

//RatingDialogViewController.swift
"My new message" = "My new message";

меняем в файле для русской локали строку на
"My new message" = "Мое новое сообщение";
готово, можно коммитить.

////////
как это работает для значений в storyboard и xib
добавляем новую кнопку в IB с текстом "My new button"
перед коммитом мы запускаем target - Localizer и он добавляет новое значение в каждый из Localizable.strings файлов, и в ConnectionErrorView.strings

при этом для каждой локали в Localizable.strings появится
//ConnectionErrorView.xib
"My new button" = "My new button";

а в ConnectionErrorView.strings
"fGs-8a-dfc.text" = "My new button";

мы меняем ТОЛЬКО значение в Localizable.strings на
"My new button" = "Моя новая кнопка";
еще раз запускаем Localizer. Готово, можно коммитить
значение в ConnectionErrorView.strings будет обновлено автоматически

плюсы, при таком подходе
мы не можем пропустить какое либо не локализованное значение
мы не создаем новые енумы и убираем дублирование переводов
нам не нужно совершать дополнительные действия в IB чтобы локализовать текст
*/
