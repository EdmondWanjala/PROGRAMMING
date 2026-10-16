/*
 *                      C Programming
 *
 * Build one example at a time:
 *   gcc -std=c11 -Wall -Wextra -Wpedantic -DC_EXAMPLE=1 c_examples.c -o c_examples
 *
 * Change C_EXAMPLE to a number from 1 to 20 to select another example.
 * If C_EXAMPLE is not defined by the build command, example 1 is selected.
 */

#ifndef C_EXAMPLE
#define C_EXAMPLE 1
#endif

#if C_EXAMPLE < 1 || C_EXAMPLE > 20
#error "C_EXAMPLE must be between 1 and 20."
#endif

/* ------------------------------------------------------------------------- */
/* 1. BASIC PROGRAM, VARIABLES, TYPES, AND OPERATORS                         */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 1
#include <stdbool.h>
#include <stdio.h>

int main(void)
{
    int age = 21;
    double height = 1.75;
    char initial = 'A';
    bool is_student = true;

    printf("Age: %d\n", age);
    printf("Height: %.2f m\n", height);
    printf("Initial: %c\n", initial);
    printf("Student: %s\n", is_student ? "yes" : "no");

    int a = 17;
    int b = 5;

    printf("Addition: %d\n", a + b);
    printf("Subtraction: %d\n", a - b);
    printf("Multiplication: %d\n", a * b);
    printf("Integer division: %d\n", a / b); /* 3 */
    printf("Remainder: %d\n", a % b);        /* 2 */
    printf("Floating division: %.2f\n", (double)a / b);
    printf("Size of int: %zu bytes\n", sizeof(int));

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 2. USER INPUT AND VALIDATION                                               */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 2
#include <stdio.h>

int main(void)
{
    int age;

    printf("Enter your age: ");
    fflush(stdout);

    if (scanf("%d", &age) != 1) {
        fprintf(stderr, "Invalid integer input.\n");
        return 1;
    }

    if (age < 0) {
        printf("Age cannot be negative.\n");
    } else if (age < 18) {
        printf("You are a minor.\n");
    } else {
        printf("You are an adult.\n");
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 3. CONDITIONALS AND SWITCH                                                 */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 3
#include <stdio.h>

int main(void)
{
    int score = 76;

    if (score >= 70) {
        printf("Grade A\n");
    } else if (score >= 60) {
        printf("Grade B\n");
    } else if (score >= 50) {
        printf("Grade C\n");
    } else {
        printf("Grade D\n");
    }

    int choice = 2;

    switch (choice) {
        case 1:
            printf("Add record\n");
            break;
        case 2:
            printf("View records\n");
            break;
        case 3:
            printf("Delete record\n");
            break;
        default:
            printf("Unknown option\n");
            break;
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 4. LOOPS                                                                   */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 4
#include <stdio.h>

int main(void)
{
    /* for loop: prints 1 through 5 */
    for (int i = 1; i <= 5; i++) {
        printf("%d ", i);
    }
    printf("\n");

    /* while loop */
    int count = 3;
    while (count > 0) {
        printf("Countdown: %d\n", count);
        count--;
    }

    /* do-while executes at least once */
    int number = 1;
    do {
        printf("Number: %d\n", number);
        number++;
    } while (number <= 3);

    /* break and continue */
    for (int i = 1; i <= 8; i++) {
        if (i == 3) {
            continue;
        }
        if (i == 6) {
            break;
        }
        printf("%d ", i);
    }
    printf("\n");

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 5. ARRAYS AND ARRAY PROCESSING                                             */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 5
#include <stddef.h>
#include <stdio.h>

int main(void)
{
    int marks[] = {75, 82, 91, 68, 88};
    size_t count = sizeof(marks) / sizeof(marks[0]);
    int sum = 0;

    for (size_t i = 0; i < count; i++) {
        sum += marks[i];
    }

    double average = (double)sum / (double)count;

    printf("Number of marks: %zu\n", count);
    printf("Total: %d\n", sum);
    printf("Average: %.2f\n", average);
    printf("First mark: %d\n", marks[0]);
    printf("Last mark: %d\n", marks[count - 1]);

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 6. STRINGS AND CHARACTER ARRAYS                                            */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 6
#include <stdio.h>
#include <string.h>

int main(void)
{
    char name[40] = "Python and C";

    printf("Text: %s\n", name);
    printf("Length: %zu\n", strlen(name));

    if (strcmp(name, "Python and C") == 0) {
        printf("Strings are equal.\n");
    }

    char input[100];
    printf("Enter a sentence: ");
    fflush(stdout);

    if (fgets(input, sizeof(input), stdin) != NULL) {
        input[strcspn(input, "\n")] = '\0';
        printf("You entered: %s\n", input);
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 7. FUNCTIONS AND POINTER PARAMETERS                                        */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 7
#include <stddef.h>
#include <stdio.h>

int add(int a, int b);
void swap(int *a, int *b);

int main(void)
{
    printf("Sum: %d\n", add(10, 20));

    int x = 5;
    int y = 9;
    swap(&x, &y);

    printf("x = %d, y = %d\n", x, y);
    return 0;
}

int add(int a, int b)
{
    return a + b;
}

void swap(int *a, int *b)
{
    if (a == NULL || b == NULL) {
        return;
    }

    int temporary = *a;
    *a = *b;
    *b = temporary;
}
#endif

/* ------------------------------------------------------------------------- */
/* 8. SCOPE AND STATIC LOCAL VARIABLES                                        */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 8
#include <stdio.h>

static void count_calls(void)
{
    static int count = 0;
    count++;
    printf("Call number: %d\n", count);
}

int main(void)
{
    int local_value = 10;

    printf("Local value: %d\n", local_value);
    count_calls();
    count_calls();
    count_calls();

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 9. POINTERS AND ADDRESS OPERATORS                                          */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 9
#include <stdio.h>

int main(void)
{
    int value = 42;
    int *pointer = &value;

    printf("Value: %d\n", value);
    printf("Address: %p\n", (void *)&value);
    printf("Pointer value: %p\n", (void *)pointer);
    printf("Dereferenced value: %d\n", *pointer);

    *pointer = 99;
    printf("Updated value: %d\n", value);

    int numbers[] = {10, 20, 30};
    int *p = numbers;

    printf("%d\n", *p);
    printf("%d\n", *(p + 1));
    printf("%d\n", *(p + 2));

    int *empty_pointer = NULL;
    if (empty_pointer == NULL) {
        printf("Pointer is not pointing to an object.\n");
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 10. DYNAMIC MEMORY ALLOCATION                                              */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 10
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    size_t count = 5;

    if (count > SIZE_MAX / sizeof(int)) {
        fprintf(stderr, "Requested size is too large.\n");
        return 1;
    }

    int *numbers = malloc(count * sizeof(*numbers));
    if (numbers == NULL) {
        fprintf(stderr, "Memory allocation failed.\n");
        return 1;
    }

    for (size_t i = 0; i < count; i++) {
        numbers[i] = (int)(i + 1) * 10;
    }

    for (size_t i = 0; i < count; i++) {
        printf("%d ", numbers[i]);
    }
    printf("\n");

    free(numbers);
    numbers = NULL;

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 11. STRUCTURES, ENUMERATIONS, AND TYPEDEFS                                 */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 11
#include <stdio.h>

typedef enum {
    STATUS_IDLE,
    STATUS_RUNNING,
    STATUS_ERROR
} Status;

typedef struct {
    int id;
    char name[40];
    double score;
    Status status;
} Student;

int main(void)
{
    Student student = {
        .id = 101,
        .name = "Amina",
        .score = 89.5,
        .status = STATUS_RUNNING
    };

    printf("ID: %d\n", student.id);
    printf("Name: %s\n", student.name);
    printf("Score: %.2f\n", student.score);

    if (student.status == STATUS_RUNNING) {
        printf("Student process is running.\n");
    }

    Student *ptr = &student;
    printf("Name through pointer: %s\n", ptr->name);

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 12. RECURSION                                                              */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 12
#include <stdio.h>

static unsigned long long factorial(unsigned int n)
{
    if (n <= 1) {
        return 1;
    }

    /* Large inputs can overflow unsigned long long. */
    return n * factorial(n - 1);
}

int main(void)
{
    printf("5! = %llu\n", factorial(5));
    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 13. FILE HANDLING                                                          */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 13
#include <stdio.h>

int main(void)
{
    FILE *file = fopen("notes.txt", "w");
    if (file == NULL) {
        perror("Could not open file");
        return 1;
    }

    if (fprintf(file, "C file handling example.\n") < 0) {
        perror("Could not write to file");
        (void)fclose(file);
        return 1;
    }

    if (fclose(file) == EOF) {
        perror("Could not close file");
        return 1;
    }

    file = fopen("notes.txt", "r");
    if (file == NULL) {
        perror("Could not reopen file");
        return 1;
    }

    char line[100];
    while (fgets(line, sizeof(line), file) != NULL) {
        printf("%s", line);
    }

    if (ferror(file)) {
        perror("Error while reading file");
        (void)fclose(file);
        return 1;
    }

    if (fclose(file) == EOF) {
        perror("Could not close input file");
        return 1;
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 14. PREPROCESSOR MACROS AND HEADER FILES                                   */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 14
#include <stddef.h>
#include <stdio.h>

#define ARRAY_LENGTH(array) (sizeof(array) / sizeof((array)[0]))
#define MAX_VALUE 100

int main(void)
{
    int values[] = {10, 20, 30, 40};
    size_t length = ARRAY_LENGTH(values);

    printf("Array length: %zu\n", length);
    printf("Maximum constant: %d\n", MAX_VALUE);

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 15. BITWISE OPERATIONS                                                     */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 15
#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>

int main(void)
{
    uint32_t flags = 0;

    flags |= (UINT32_C(1) << 2); /* Set bit 2. */
    flags |= (UINT32_C(1) << 5); /* Set bit 5. */

    printf("Flags: %" PRIu32 "\n", flags);

    if ((flags & (UINT32_C(1) << 2)) != 0) {
        printf("Bit 2 is set.\n");
    }

    flags &= ~(UINT32_C(1) << 2); /* Clear bit 2. */
    flags ^= (UINT32_C(1) << 5);  /* Toggle bit 5. */

    printf("Updated flags: %" PRIu32 "\n", flags);
    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 16. SEARCHING AND ALGORITHMS                                               */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 16
#include <stddef.h>
#include <stdio.h>

static ptrdiff_t linear_search(const int array[], size_t length, int target)
{
    for (size_t i = 0; i < length; i++) {
        if (array[i] == target) {
            return (ptrdiff_t)i;
        }
    }

    return -1;
}

static ptrdiff_t binary_search(const int array[], size_t length, int target)
{
    size_t left = 0;
    size_t right = length; /* Exclusive upper boundary. */

    /* The array must already be sorted in ascending order. */
    while (left < right) {
        size_t middle = left + (right - left) / 2;

        if (array[middle] == target) {
            return (ptrdiff_t)middle;
        }
        if (array[middle] < target) {
            left = middle + 1;
        } else {
            right = middle;
        }
    }

    return -1;
}

int main(void)
{
    int values[] = {2, 4, 7, 8, 10};
    size_t length = sizeof(values) / sizeof(values[0]);

    printf("Linear search: %td\n", linear_search(values, length, 7));
    printf("Binary search: %td\n", binary_search(values, length, 8));

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 17. FUNCTION POINTERS                                                     */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 17
#include <stdio.h>

static int add(int a, int b)
{
    return a + b;
}

static int multiply(int a, int b)
{
    return a * b;
}

int main(void)
{
    int (*operation)(int, int) = add;
    printf("Addition: %d\n", operation(3, 4));

    operation = multiply;
    printf("Multiplication: %d\n", operation(3, 4));

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 18. MULTIPLE FILES: HEADER AND SOURCE                                      */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 18
#include <stdio.h>

/* This single-file version is runnable as part of this collection. */
static int calculate_sum(int a, int b)
{
    return a + b;
}

int main(void)
{
    printf("%d\n", calculate_sum(5, 7));
    return 0;
}
#endif

/* To split example 18 into separate files, use these contents:

calculator.h:
#ifndef CALCULATOR_H
#define CALCULATOR_H
int calculate_sum(int a, int b);
#endif

calculator.c:
#include "calculator.h"
int calculate_sum(int a, int b)
{
    return a + b;
}

main.c:
#include <stdio.h>
#include "calculator.h"
int main(void)
{
    printf("%d\n", calculate_sum(5, 7));
    return 0;
}

Compile the separate-file version with:
gcc -std=c11 -Wall -Wextra -Wpedantic main.c calculator.c -o calculator
*/

/* ------------------------------------------------------------------------- */
/* 19. SIMPLE EMBEDDED-STYLE STATE MACHINE                                    */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 19
#include <stdio.h>

typedef enum {
    STATE_OFF,
    STATE_ON,
    STATE_ERROR
} DeviceState;

int main(void)
{
    DeviceState state = STATE_OFF;

    /* Demonstrates logic only; it does not access real hardware. */
    for (int step = 0; step < 3; step++) {
        switch (state) {
            case STATE_OFF:
                printf("Device is off; switching on.\n");
                state = STATE_ON;
                break;

            case STATE_ON:
                printf("Device is on; checking status.\n");
                state = STATE_ERROR;
                break;

            case STATE_ERROR:
                printf("Error detected; stopping device.\n");
                break;
        }
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 20. TESTING AND ASSERTIONS                                                 */
/* ------------------------------------------------------------------------- */
#if C_EXAMPLE == 20
#include <assert.h>
#include <stdio.h>

static int square(int number)
{
    return number * number;
}

int main(void)
{
    /* Assertions may be disabled when NDEBUG is defined. */
    assert(square(3) == 9);
    assert(square(0) == 0);
    assert(square(-4) == 16);

    printf("All assertions passed.\n");
    return 0;
}
#endif
