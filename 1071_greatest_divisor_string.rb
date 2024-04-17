# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
    # We need the Greatest Common Denominator from the strings
    # First we get the length of each string
    # Then we apply Euclid's algorithm is an efficient method for finding the greatest common divisor of two numbers. It works by repeatedly applying the following operation: replacing the larger number with the remainder when divided by the smaller number. This process is repeated until the remainder is zero. At that point, the last non-zero remainder is the greatest common divisor of the two numbers.

    # Here's a breakdown of the `gcd` method:

    # 1. It takes two integer arguments `a` and `b`.
    # 2. It enters a while loop that continues until `b` becomes zero.
    # 3. Within the loop, it swaps the values of `a` and `b`, and assigns `b` the remainder when `a` is divided by `b`.
    # 4. Once `b` becomes zero, the loop terminates and the last non-zero value of `a` is returned, which represents the GCD of the two integers.

    # def gcd(a, b)
    #     while b != 0
    #         temp = b
    #         b = a % b
    #         a = temp
    #     end
    #     a
    # end


    # In the context of the `gcd_of_strings` method, the `gcd` function is used to find the GCD of the lengths of two strings, which is then used to determine the length of the greatest common divisor substring.

    gcd_length = str1.length.gcd(str2.length)
    return "" if str1+str2 != str2+str1
    return "" if str1.length == str2.length && str1 != str2
    return str1[0...gcd_length]

    # puts "str1.length #{str1.length} str2.l #{str2.length}"

    # mod1 = str1.length % str2.length
    # puts "mod1 #{mod1}"
    # mod2 = str2.length % str1.length
    # puts "mod2 #{mod2}"

    # return str2 if mod1 == 0
    # return str1 if mod2 == 0
    # if mod1 != 0
    #     if mod2 != 0
    #         if mod1 % mod2 != 0
    #             return str1[0,mod1 % mod2]
    #         elsif mod2 % mod1 !=0
    #             str2[0,mod2 % mod1]
    #         end
    #     end
    # end

    # string = str1.length >= str2.length ? str1.delete_prefix(str2) : str2.delete_prefix(str1)
    # shortString = str1.length >= str2.length ? str2.delete_prefix(string) : str1.delete_prefix(string)
    # puts string
    # puts shortString
    #     if string.length == 0
    #     puts "string.length == 0 #{string}"
    #         return str1
    #     elsif (string.length == str2.length) && string != str2
    #     puts "string.length == str2.length #{string}"
    #         return ""
    #     elsif string.length != 0
    #     puts "string.length != 0 #{string}"
    #         return string
    #     elsif (str1.length / str2.length) != 2 or (str2.length / str1.length) != 2
    #         puts "(str1.length / str2.length) shortString #{string}"
    #         return shortString
    #     end
    end
