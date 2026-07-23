class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        MAX_INT=2**31-1
        MIN_INT=-2**31
        is_negative=False
        if x<0:
            is_negative=True
        reverse_number=0
        dup=x
        num=abs(x)
        while num>0:        
            reverse_number=(reverse_number*10)+num%10
            num=num//10
        if reverse_number<(MIN_INT) or reverse_number>(MAX_INT):
            return False    
        return True if dup==reverse_number else False 