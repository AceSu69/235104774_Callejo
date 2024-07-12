@echo off

echo Hello User, Welcome to the Shape Area Calculator

:menu
echo.
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
choice /c 123 /m "Choose a shape you want to calculate!:"

if errorlevel 3 goto quadrilateral
if errorlevel 2 goto triangle
if errorlevel 1 goto circle

:circle
set /p "radius=Enter the radius of the circle: "
set /a "areaInt=314159 * radius * radius / 100000"
echo The area of the circle is approximately: %areaInt%
goto end

:triangle
set /p "a=Enter the length of the first side: "
set /p "b=Enter the length of the second side: "
set /p "c=Enter the length of the third side: "

set /a "s=(a + b + c) / 2"
set /a "area=sqrt(s * (s - a) * (s - b) * (s - c))"
echo The area of the triangle is approximately: %area%

if %a% equ %b% if %b% equ %c% (
    echo The triangle is equilateral.
) else if %a% equ %b% if %a% neq %c% (
    echo The triangle is isosceles.
) else if %a% neq %b% if %a% neq %c% if %b% neq %c% (
    echo The triangle is scalene.
)
goto end

:quadrilateral
set /p "length=Enter the length: "
set /p "width=Enter the width: "
set /a "area=length * width"
echo The area of the quadrilateral is: %area%

if %length% equ %width% (
    echo The quadrilateral is a square.
) else (
    echo The quadrilateral is a rectangle.
)
goto end

:end
echo Thank you
pause