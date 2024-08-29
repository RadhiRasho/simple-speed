#include <iostream>
#include <sstream>

using namespace std;

int main()
{
    stringstream buffer;
    for (int i = 0; i < 1000000; i++)
    {
        buffer << i << endl;
    }
    cout << buffer.str();
    return 0;
}