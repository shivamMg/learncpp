#include "add.h"

#include <iostream>

#include "plog/Log.h"
#include "plog/Appenders/ConsoleAppender.h"


int main()
{
    static plog::ConsoleAppender<plog::TxtFormatter> consoleAppender;
    plog::init(plog::debug, &consoleAppender);
    LOGD << "main() called";
    std::cout << "The sum of 3 and 4 is: " << add(3, 4) << '\n';
    return 0;
}
