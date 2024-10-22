//
//  FormValidatorUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 21/10/2024.
//

import XCTest
@testable import FotoLoop

// MARK: For this Demo App this test data provided is enough

final class FormValidatorUnitTests: XCTestCase {

    var sut: FormValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = FormValidator()

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testValidUsernameFormat() {
        // Arrange
        let validUsernames: [String] = [
            "user_name1",           // Valid
            "test.user",            // Valid
            "validUser123",         // Valid
            "example_user",         // Valid
            "my.name.42",           // Valid
            "john_doe",             // Valid
            "alice.smith",          // Valid
            "user123",              // Valid
            "testUser2024",         // Valid
            "valid_username",       // Valid
            "name.lastname",        // Valid
            "first.last.name",      // Valid
            "test.UserName",        // Valid
            "sample_user_01",       // Valid
            "example.name123",      // Valid
            "name_2023",            // Valid
            "username_test",        // Valid
            "validUser1",           // Valid
            "example_user_42",      // Valid
            "my.test.name"          // Valid
        ]

        // Assert
        for (index, username) in validUsernames.enumerated() {
            XCTAssertTrue(sut.validateUsername(username),
                          "The username: \(username), at index \(index) should be valid")
        }
    }

    func testInvalidUsernameFormat() {
        // Arrange
        let invalidUsernames: [String] = [
            // Too Short
            "user",            // 4 characters
            "a_b",             // 3 characters

            // Too Long
            "thisIsAVeryLongUsername123",  // 26 characters
            "username_is_too_long12345",   // 25 characters

            // Contains Spaces
            "user name",
            "invalid username",
            "test user",

            // Starts or Ends with Special Characters
            "_username",      // starts with underscore
            ".username",      // starts with dot
            "username_",      // ends with underscore
            "username.",      // ends with dot

            // Contains Invalid Characters
            "user@name",      // contains @
            "name#123",       // contains #
            "name*test"       // contains *
        ]

        // Assert
        for (index, username) in invalidUsernames.enumerated() {
            XCTAssertFalse(sut.validateUsername(username),
                          "The username: \(username), at index \(index) should be invalid")
        }
    }

    func testValidEmailFormat() {
        // Arrange
        let validEmails: [String] = [
            "example@example.com",            // Valid
            "user.name@domain.com",           // Valid
            "user_name@domain.co.uk",         // Valid
            "firstname.lastname@sub.domain.com", // Valid
            "user+tag@domain.com",            // Valid
            "valid123@domain.io",             // Valid
            "user-name@domain.org",           // Valid
            "test.email@domain123.com",       // Valid
            "name@domain.info",                // Valid
            "name@domain.travel"               // Valid
        ]

        // Assert
        for (index, email) in validEmails.enumerated() {
            XCTAssertTrue(sut.validateEmail(email), "The email: \(email) at index: \(index) should be valid.")
        }
    }

    func testInvalidEmailFormat() {
        // Arrange
        let invalidEmails: [String] = [
            "plainaddress",                    // Invalid: Missing '@' and domain
            "@missingusername.com",            // Invalid: Missing username
            "username@.com",                   // Invalid: Missing domain name
            "username@domain..com",            // Invalid: Double dot in domain
            "username@domain.c",               // Invalid: TLD too short
            "username@domain",                  // Invalid: Missing TLD
            "user@domain..com",                // Invalid: Double dot in domain
            "user@-domain.com",                // Invalid: Invalid start of domain
            "username@domain..com",            // Invalid: Invalid double dots in domain
            "username@domain,com"              // Invalid: Comma instead of dot
        ]

        // Assert
        for (index, email) in invalidEmails.enumerated() {
            XCTAssertFalse(sut.validateEmail(email), "The email: \(email) at index: \(index) should be invalid.")
        }
    }

    func testValidFirstNameFormat() {
        // Arrange
        let validFirstNames = [
            "John",
            "Emily",
            "Michael",
            "Samantha",
            "Jessica",
            "Matthew",
            "Sophia",
            "Andrew",
            "Isabella",
            "Alexander"
        ]

        // Assert
        for (index, name) in validFirstNames.enumerated() {
            XCTAssertTrue(sut.validateFirstName(name), "The first name: \(name) at index: \(index) should be valid.")
        }
    }

    func testInvalidFirstNameFormat() {
        // Arrange
        let invalidFirstNames = [
            "Jo",             // Too short (2 characters)
            "Al",             // Too short (2 characters)
            "James123",       // Contains digits
            "Sarah!",         // Contains special character
            "O'Neil",         // Contains apostrophe
            "A",              // Too short (1 character)
            "Zoe",            // Too short (3 characters)
            "Joanne@Doe"      // Contains special character
        ]

        // Assert
        for (index, name) in invalidFirstNames.enumerated() {
            XCTAssertFalse(sut.validateFirstName(name), "The first name: \(name) at index: \(index) should be invalid.")
        }
    }

    func testValidLastNameFormat() {
        // Arrange
        let validLastNames = [
            "Smith",
            "Johnson",
            "Williams",
            "Jones",
            "Garcia",
            "Brown",
            "Davis",
            "Miller",
            "Wilson",
            "Moore"
        ]

        // Assert
        for (index, name) in validLastNames.enumerated() {
            XCTAssertTrue(sut.validateLastName(name), "The last name: \(name) at index: \(index) should be valid.")
        }
    }

    func testInvalidLastNameFormat() {
        // Arrange
        let invalidLastNames = [
            "Lee",              // Too short (3 characters)
            "O'Connor",         // Contains apostrophe
            "Johnson123",       // Contains digits
            "Doe!",             // Contains special character
            "McDonald!",        // Contains special character
            "Al",               // Too short (2 characters)
            "Z",                // Too short (1 character)
            "Santos@Doe"       // Contains special character
        ]

        // Assert
        for (index, name) in invalidLastNames.enumerated() {
            XCTAssertFalse(sut.validateLastName(name), "The last name: \(name) at index: \(index) should be invalid.")
        }
    }

    func testValidPasswordFormat() {
        // Arrange
        let validPasswords = [
            "Password1!",
            "SecurePass9@",
            "HelloWorld#8",
            "Valid123$",
            "Strong!Password8",
            "Test@1234",
            "MyPassWord9#",
            "Good&Password1",
            "1Safe!Password",
            "Password$2024"
        ]

        // Assert
        for (index, password) in validPasswords.enumerated() {
            XCTAssertTrue(sut.validatePassword(password),
                          "The password: \(password) at index: \(index) should be valid.")
        }
    }

    func testInvalidPasswordFormat() {
        // Arrange
        let invalidPasswords = [
            "password",        // No uppercase, no digit, no special character
            "12345678",       // No uppercase, no special character
            "pass@word",      // No uppercase, not enough digits
            "PASSWORD",       // No lowercase, no digit, no special character
            "Pass123",        // No special character, too short
            "Short1!",        // Too short (only 7 characters)
            "ValidPass",      // No digit, no special character
            "helloWORLD!",     // No digit
            "Hello123"        // No special character
        ]

        // Assert
        for (index, password) in invalidPasswords.enumerated() {
            XCTAssertFalse(sut.validatePassword(password),
                           "The password: \(password) at index: \(index) should be invalid.")
        }
    }

    func testValidRepeatPasswordFormat() {
        // Arrange
        let validPassword = "1Safe!Password"
        let validRepeatPassword = "1Safe!Password"

        // Act
        let passwordsAreEqual = sut.validateRepeatPassword(validPassword, validRepeatPassword)

        // Assert
        XCTAssertTrue(passwordsAreEqual,
                      "The password: \(validPassword) should be equal to the repeat password: \(validRepeatPassword)")
    }

    func testInvalidRepeatPasswordFormat() {
        // Arrange
        let invalidPassword = "1Safe!Password"
        let invalidRepeatPassword = "MyPassWord9#"

        // Act
        let passwordsAreEqual = sut.validateRepeatPassword(invalidPassword, invalidRepeatPassword)

        // Assert
        XCTAssertFalse(passwordsAreEqual,
        "The password: \(invalidPassword) should not be equal to the repeat password: \(invalidRepeatPassword)")
    }

    func testValidForm() {
        // Arrange
        let registerForm = RegisterForm(id: UUID(), username: "user_name1",
                                        email: "example@example.com", firstName: "John",
                                        lastName: "Jones", password: "1Safe!Password",
                                        repeatPassword: "1Safe!Password")

        // Act
        let formIsValid = sut.validateAllFields(registerForm: registerForm)

        // Assert
        XCTAssertTrue(formIsValid, "The form: \(registerForm) should be valid.")
    }

    func testInvalidForm() {
        // Arrange
        let registerForm = RegisterForm(id: UUID(), username: "user_name1",
                                        email: "example@example.com", firstName: "John",
                                        lastName: "Jones", password: "1Safe!Password",
                                        repeatPassword: "Strong!Password8")

        // Act
        let formIsValid = sut.validateAllFields(registerForm: registerForm)

        // Assert
        XCTAssertFalse(formIsValid, "The form: \(registerForm) should be invalid.")
    }

}
