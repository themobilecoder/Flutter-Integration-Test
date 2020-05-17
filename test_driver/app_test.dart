import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Test happy case',
    () {
      FlutterDriver driver;

      Future<void> _scrollToWidget(SerializableFinder list, SerializableFinder item) async {
        await driver.scrollUntilVisible(
          list,
          item,
          dyScroll: -200.0,
        );
      }

      setUpAll(() async {
        driver = await FlutterDriver.connect();
      });

      tearDownAll(() async {
        driver?.close();
      });

      test('Verify health of Flutter driver', () async {
        final health = await driver.checkHealth();
        expect(health.status, equals(HealthStatus.ok));
      });

      test('Verify contact list', () async {
        final header = find.text('Contacts');
        final contactList = find.byType('CustomScrollView');
        final name1 = find.text('Yann Giraud');
        final phone1 = find.text('06-11-20-64-48');
        final name2 = find.text('Matéo Rousseau');
        final phone2 = find.text('06-76-66-05-37');
        final name3 = find.text('Emily Carter');
        final phone3 = find.text('0440-748-656');
        final name4 = find.text('Jimmy Bryant');
        final phone4 = find.text('(068)-384-8281');
        final name5 = find.text('Yannic Maria');
        final phone5 = find.text('(646)-227-1453');
        final name6 = find.text('Ömür Özbey');
        final phone6 = find.text('(031)-806-5751');
        final name7 = find.text('Rhonda Crawford');
        final phone7 = find.text('0438-100-271');
        final name8 = find.text('Megan Patel');
        final phone8 = find.text('458-819-2633');
        final name9 = find.text('Colin Harrison');
        final phone9 = find.text('081-431-2318');
        final name10 = find.text('Ava Moreau');
        final phone10 = find.text('078 637 62 26');
        await driver.waitFor(header);
        await driver.waitFor(contactList);
        await driver.waitFor(name1);
        await driver.waitFor(phone1);
        await driver.waitFor(name2);
        await driver.waitFor(phone2);
        await driver.waitFor(name3);
        await driver.waitFor(phone3);
        await driver.waitFor(name4);
        await driver.waitFor(phone4);
        await driver.waitFor(name5);
        await driver.waitFor(phone5);
        await _scrollToWidget(contactList, name6);
        await _scrollToWidget(contactList, phone6);
        await _scrollToWidget(contactList, name7);
        await _scrollToWidget(contactList, phone7);
        await _scrollToWidget(contactList, name8);
        await _scrollToWidget(contactList, phone8);
        await _scrollToWidget(contactList, name9);
        await _scrollToWidget(contactList, phone9);
        await _scrollToWidget(contactList, name10);
        await _scrollToWidget(contactList, phone10);
      });

      test('Verify contact detail', () async {
        final header = find.text('Contacts');
        final ava = find.text('Ava Moreau');
        final contactList = find.byType('CustomScrollView');
        await driver.waitFor(header);
        await driver.waitFor(contactList);
        await _scrollToWidget(contactList, ava);
        await driver.tap(ava);

        final mobile = find.text('078 637 62 26');
        final email = find.text('ava.moreau@example.com');
        final streetLabel = find.text('Street');
        final street = find.text('9733 Rue Louis-Garrand');
        final cityLabel = find.text('City');
        final city = find.text('Rudolfstetten-Friedlisberg');
        final stateLabel = find.text('State');
        final state = find.text('Graubünden');
        final postCodeLabel = find.text('Post code');
        final postCode = find.text('4551');
        final backButton = find.pageBack();
        await driver.waitFor(ava);
        await driver.waitFor(mobile);
        await driver.waitFor(email);
        await driver.waitFor(streetLabel);
        await driver.waitFor(street);
        await driver.waitFor(cityLabel);
        await driver.waitFor(city);
        await driver.waitFor(stateLabel);
        await driver.waitFor(state);
        await driver.waitFor(postCodeLabel);
        await driver.waitFor(postCode);
        await driver.tap(backButton);
      });
    },
  );
}
