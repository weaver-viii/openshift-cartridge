/*
 * Copyright 2011 Red Hat Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import com.example.interop { JavaHelper { javaPrint }}
import java.lang { JInteger = Integer }

"The classic Hello World program"
shared void hello(String name = "World") {
    value i = JInteger(2);
    javaPrint("Hello, `` name ``!");
    JavaPrinter(name).print("Hello again, ");
}

"The runnable method of the module." 
shared void run(){
    if (nonempty args=process.arguments) {
        for (arg in args) {
            hello(arg);
        }
    }
    else {
        hello();
    }
}
