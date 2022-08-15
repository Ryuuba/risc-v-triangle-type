int main()
{
    unsigned a = 1, b = 2, c = 3;
    unsigned type;
    bool is_triangle = true;
    if (a > b && a > c)
    {
        if (a >= (b + c))
            is_triangle = false;
    }
    else if (b > a && b > c)
    {
        if (b >= (a + c))
            is_triangle = false;
    }
    else if (c > a && c > b)
    {
        if (c >= (a + b))
            is_triangle = false;
    }
    if (is_triangle)
    {
        if (a == b && a == c)
            type = 3;
        else if (a != b && a != c && b != c)
            type = 1;
        else
            type = 2;
    }
    else
        type = 0;
    return 0;
}