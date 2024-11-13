# ft_printf

**ft_printf** is a project from 42 that involves creating a custom implementation of the `printf()` function in C. This project allows students to implement a simplified version of the C standard library's `printf()` by handling various format specifiers and managing their own memory and string manipulations.

The goal of this project is to practice understanding variable arguments, managing different data types, and creating reusable functions while working with system-level code in C.

## Table of Contents

- [Introduction](#introduction)
- [Project Requirements](#project-requirements)
- [Implemented Features](#implemented-features)
- [Compiling the Program](#compiling-the-program)
- [Usage Example](#usage-example)

---

## Introduction

The **ft_printf** project aims to recreate the functionality of the standard `printf()` function. You will need to handle format specifiers such as `%d`, `%s`, `%x`, `%c`, and others. The project will help you practice working with variable argument lists, the `va_list` type, and understanding how `printf()` processes its arguments to generate formatted output.

This implementation is designed to closely mirror the behavior of the real `printf()`, while providing you with an opportunity to explore low-level C features and how variadic functions work.

---

## Project Requirements

To complete the **ft_printf** project, you need to:

- Implement a function called `ft_printf()` that behaves similarly to `printf()`.
- Handle multiple format specifiers: `%c`, `%s`, `%d`, `%i`, `%u`, `%x`, `%X`, `%p`, and `%`.
- Handle edge cases, such as:
  - Invalid format specifiers.
  - Null pointers when printing strings.
  - Negative numbers in integer formats.
- Manage memory and string formatting using manual techniques (e.g., `write`, `malloc`, `free`).

The goal is to create an efficient, flexible, and error-free implementation that can be used across different projects.

---

## Implemented Features

The **ft_printf** function supports the following format specifiers:

- **`%c`**: Prints a single character.
- **`%s`**: Prints a string.
- **`%d`**: Prints a signed decimal integer.
- **`%i`**: Prints a signed integer (same as `%d`).
- **`%u`**: Prints an unsigned decimal integer.
- **`%x`**: Prints a hexadecimal integer (lowercase).
- **`%X`**: Prints a hexadecimal integer (uppercase).
- **`%p`**: Prints a pointer address in hexadecimal format (with `0x` prefix).
- **`%%`**: Prints a literal `%` character.

---

## Compiling the Program

To compile **ft_printf**, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/ft_printf.git

2. Navigate to the project directory:

   ```bash
   cd ft_printf

3. Compile the library using `make`:

   ```bash
   make

This will generate a static library file `libft.a`.

3. (Optional) To clean up the object files after compiling:

   ```bash
   make clean

3. (Optional) To remove all compiled files and the library:

   ```bash
    make fclean

3. To recompile the library after cleaning:

   ```bash
   make re

---

## Usage Example

After compiling ft_printf, you can link it to your project and use it like this:

1. Include `ft_printf.h` in your C file:

   ```c
   #include "ft_printf.h"

2. Compile your project with ft_printf:

   ```bash
   cc -o libftprintf.a my_program.c -L. -lft

3. Call `ft_printf()` to print formatted output:

   ```c
   #include "ft_printf.h"
   #include <stdio.h>

   int main() {
     ft_printf("Hello, %s! Number: %d\n", "World", 42);
     ft_printf("Hex: %x, Upper Hex: %X\n", 255, 255);
     ft_printf("Pointer: %p\n", &main);
     return 0;
   }

4. The output of this example would be:

   ```yaml
   Hello, World! Number: 42
   Hex: ff, Upper Hex: FF
   Pointer: 0x7ffddc804ab0
