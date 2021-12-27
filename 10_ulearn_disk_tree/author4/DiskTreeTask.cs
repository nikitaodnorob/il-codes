using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiskTree
{
    public class DiskTreeTask
    {
        class Node
        {
            public Dictionary<string, Node> Nodes;
            public string Name;
            

            public List<string> GetPrinted(int level, List<string> lst)
            {
                if (level > 0)
                    lst.Add(new string(' ', level - 1) + Name);

                var nodes = Nodes.Values.OrderBy(root => root.Name, StringComparer.Ordinal);

                foreach (var child in nodes)
                    lst = child.GetPrinted(level + 1, lst);

                return lst;
            }

            public Node(string name = "")
            {
                
                Nodes = new Dictionary<string, Node>();
                Name = name;
            }

            public Node GetChild(string subRoot)
            {
                if (!Nodes.ContainsKey(subRoot))
                    Nodes[subRoot] = new Node(subRoot);
                var res = Nodes[subRoot];
                return res;
            }
        }

        public static List<string> SolveTask(List<string> input)
        {
            var rootNode = new Node();
            foreach (var path in input)
            {
                var node = rootNode;
                foreach (var item in path.Split('\\'))
                    node = node.GetChild(item);
            }
            List<string> emptyList = new List<string>();
            return rootNode.GetPrinted(0, emptyList);
        }
    }
}
