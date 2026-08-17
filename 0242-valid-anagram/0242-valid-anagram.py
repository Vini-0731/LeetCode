class Solution(object):
    def isAnagram(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        t=list(t)
        if len(s)!=len(t):
            return False
        for i in s:
            if i in t:
                t.remove(i)
            else:
                return False       
        return True        