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
            public string Name;
            public Dictionary<string, Node> Nodes;

            public List<string> GetPrinted(int level, List<string> list)
            {
                if (level > 0)
                    list.Add(new string(' ', level - 1) + Name);

                var nodes = Nodes.Values.OrderBy(root => root.Name, StringComparer.Ordinal);

                foreach (var child in nodes)
                    list = child.GetPrinted(level + 1, list);

                return list;
            }

            public Node(string name = "")
            {
                Name = name;
                Nodes = new Dictionary<string, Node>();
            }

            public Node GetChild(string subRoot)
            {
                if (!Nodes.ContainsKey(subRoot))
                    Nodes[subRoot] = new Node(subRoot);
                return Nodes[subRoot];
            }
        }

        public static List<string> Solve(List<string> input)
        {
            var root = new Node();
            foreach (var path in input)
            {
                var node = root;
                foreach (var item in path.Split('\\'))
                    node = node.GetChild(item);
            }

            return root.GetPrinted(0, new List<string>());
        }
    }
}
